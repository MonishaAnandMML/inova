package cucumber.features;

import java.time.Instant;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;
import org.jpos.iso.ISOMsg;
import org.junit.Assert;
import com.api.common.GenericActions;
import com.api.simulator.AcquirerSimulator;
import com.google.common.collect.LinkedListMultimap;
import com.api.isoMessages.MessageMap;
import com.api.connector.ValidateThread;
import com.api.simulator.IssuerSimulator;
import com.api.database.MessageDB;
import com.api.validation.AcquirerProcessing;
import com.api.validation.IssuerValidation;
import com.api.validation.MessageQueue;
import cucumber.api.DataTable;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class SAFRecovery extends GenericActions {
	public ISOMsg msg;
	public ISOMsg receivedmessage;
	public ISOMsg responsemessage;
	public ISOMsg reversalmessage_acq;
	private String timeout;
	private String mti, RRN;
	public IssuerValidation iv = new IssuerValidation();
	public MessageQueue mq= MessageQueue.getInstance();
	public MessageDB msgdb=MessageMap.getInstance().messageDB;
	public CommonStepDefinition common=new CommonStepDefinition();
	public static LinkedList<BasicDBObject> txnlist = new LinkedList<BasicDBObject>();
	public static  LinkedListMultimap txnMap;
	public IssuerSimulator is= IssuerSimulator.getInstance();
	
	@Given("^Issuer \"([^\"]*)\" has signed off$")
	public void issuer_has_signed_off(String issuer) throws Throwable {
	    IssuerSimulator.closeIssuerConnection(issuer);
	}


	
	@When("^Acquirer forwards the STIP message to SmartEdge$")
	public void acquirer_forwards_the_STIP_message_to_SmartEdge() throws Throwable {
	   AcquirerSimulator.sendMessage("AcquirerRoute");
	   	}
	
	@When("^Acquirer updates the transaction details having priority \"([^\"]*)\" in mongo$")
	public void acquirer_updates_the_transaction_details_having_priority_in_mongo(String priority) throws Throwable {
	     msgdb.SentRequest_update(priority,MessageMap.getValue("requestmessage"));
	}
	
	@When("^Acquirer forwards the STIP reversal advice having priority \"([^\"]*)\"to SmartEdge$")
	public void acquirer_forwards_the_STIP_reversal_advice_having_priority_to_SmartEdge(String priority) throws Throwable {
		AcquirerSimulator.sendMessage("AcquirerRoute");
		   msgdb.SentRequest_update(priority,MessageMap.getValue("reversalmessage_acq"));
		   //System.out.println("date expiration"+reversalmessage_acq.getString(14));
		}

	
	@Then("^Issuer \"([^\"]*)\" signs on in recovery mode$")
	  public void issuer_signs_on_in_recovery_mode(String issuer) throws Throwable {
		Thread.sleep(1000);
		System.out.println("starting issuer connection");
		is.startIssuerConnection();
		IssuerSimulator.signInIssuer(issuer);
	    //MessageMap.printMap();
	  }
	  
	@When("^Issuer \"([^\"]*)\" signs on in recovery mode for parallel recovery$")
	public void issuer_signs_on_in_recovery_mode_for_parallel_recovery(String issuer) throws Throwable {
		//ValidateThread validate=new ValidateThread("validate");
		System.out.println("starting issuer connection");

		is.startIssuerConnection();
		IssuerSimulator.signInIssuer(issuer);
	}
	
	  @Then("^Verify that STIP advice message enqueued is received by issuer and response is sent back$")
	  public void verify_that_message_enqueued_is_received_by_issuer_and_repsonse_is_sent_back_to_the_acquirer() throws Throwable {
		 int count= msgdb.getCount(msgdb.collection_curr);
		 System.out.println("count of messages"+count);
		 for(int i=1;i<=count;i++) {
			  iv.receiveandupdate(i);
			  if(iv.chkwithmessagereceived(i)) {
				  
				  iv.processAll();
				  Assert.assertTrue("Messages are received in correct order", true);
			  }
			  
			  else {
				  Assert.assertFalse("Messages are not received in correct order", false);
			  }
		 }
		 	  }
	  

	  @Then("^Verify that STIP advice message enqueued is received parallely by issuer \"([^\"]*)\" and response is sent back$")
	  public void verify_that_STIP_advice_message_enqueued_is_received_parallely_by_issuer_and_response_is_sent_back(String issuer) throws Throwable {
	      //start the producer threads
		  ValidateThread validate=new ValidateThread("validate");
		  Thread.sleep(4000);
		  while(!(mq.txnMap.isEmpty())) {
		  IssuerSimulator.receiveInThread(issuer);
		  ISOMsg msg=validate.call();
		  new IssuerValidation().validateParallelrecovery(msg);
	 	  }}
	  
	  @Given("^Acquirer sends a PosPin transaction to SmartEdge$")
	  public void acquirer_sends_a_PosPin_transaction_to_SmartEdge(DataTable dt) throws Throwable {
		  List<List<String>> list = dt.asLists(String.class);
			for(int i=1; i<list.size(); i++) {
				String cardnum=list.get(i).get(0);
				String cvv=list.get(i).get(1);
				String priority=list.get(i).get(2);
				String tranclass=list.get(i).get(3);
				new AcquirerProcessing().createTxn(cardnum,cvv, tranclass);
				acquirer_forwards_the_STIP_message_to_SmartEdge();
				common.verify_if_acquirer_received_response(951);
				msgdb.SentRequest_update(priority,MessageMap.getValue("requestmessage"));
			}
	  }


	  @Given("^Acquirer sends a PosPin transaction to SmartEdge to be recovered in parallel$")
	  public void acquirer_sends_a_PosPin_transaction_to_SmartEdge_for_parallel_recovery(DataTable dt) throws Throwable {
		  acquirer_sends_a_PosPin_transaction_to_SmartEdge(dt);
		  //common.verify_if_acquirer_received_response(951);
		  txnMap=mq.createTxnMap();
			}


	  
	  @Then("^Acquirer initiates \"([^\"]*)\" advice request for partial Amount \"([^\"]*)\" eligible for STIP$")
	  public void acquirer_initiates_advice_request_for_partial_Amount_eligible_for_STIP(String trantype, String amount) throws Throwable {
		    msg =MessageMap.getValue("requestmessage");
		    setTranType(trantype);
			msg.set(4, amount);
			msg.set(39, "000");
			msg.set(30, msg.getString(4));
			msg.unset(14);
			msg.set(37, (MessageMap.getValue("requestmessage")).getString(37));
			byte[] originaldataelemnts=new GenericActions().setOriginalDataElements(msg.getString(24),msg.getString(32),msg.getString(37),msg.getString(41),msg.getString(42));
		    msg.set(56, originaldataelemnts);
		   int[] flds= {45,35,40,53,52};
			msg.unset(flds);	   
		   	    
		    reversalmessage_acq=msg;
		    System.out.println("date expiration in reversal"+reversalmessage_acq.getString(14));
		    MessageMap.setValue("reversalmessage_acq", reversalmessage_acq);

	  }  
	  

	  @Given("^Initiate \"([^\"]*)\" transaction for \"([^\"]*)\"  \"([^\"]*)\" with Amount \"([^\"]*)\"$")
	  public void initiate_transaction_for_with_Amount(String trantype, String cardnumber,String cvv, String amount) throws Throwable {
		  common.initiate_transaction_for_cardNumber_using_Amount(trantype, cardnumber,amount);
		  common.isoMsg.set(4, amount);
		  common.isoMsg.set(53, "0101010101");
		  common.isoMsg.set(45, setTrackData1(cvv));
		  common.isoMsg.set(35, setTrackData2());
		  common.setTrackData("TrackData");
		  common.setServiceRestrictionCode();

		  reversalmessage_acq=msg;
		    MessageMap.setValue("reversalmessage_acq", reversalmessage_acq);
		 
	  }
}
		    

	  
