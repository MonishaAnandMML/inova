package cucumber.features;

import java.time.Duration;
import java.time.Instant;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.apache.log4j.Logger;
import org.jpos.iso.ISOMsg;
import org.jpos.iso.ISOUtil;
import org.junit.Assert;
import com.api.simulator.AcquirerSimulator;
import com.api.isoMessages.MessageHeader;
import com.api.isoMessages.MessageMap;
import com.api.isoMessages.TLVMessage;
import com.api.simulator.IssuerSimulator;
import com.api.database.MessageDB;
import com.api.common.SEISOB93Packager;
import com.cucumber.listener.Reporter;
import com.aventstack.extentreports.ExtentReports;
import com.aventstack.extentreports.ExtentTest;
import com.aventstack.extentreports.reporter.ExtentHtmlReporter;
import com.api.common.*;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;


public class CommonStepDefinition extends GenericActions{

	
	public ISOMsg receivedmessage;
	public  ISOMsg requestmessage;
	public ISOMsg responsemessage;
	public ISOMsg reversalmessage;
	public ISOMsg reversalmessage_acq;
	public ISOMsg acqreversalrequest;
	public ISOMsg acqreversalrepeatrequest;
	public ISOMsg repeatreversal_advrequest;
	public ISOMsg reversalresponsemessage;
	public ISOMsg acqreversalresponsemessage;
	public static String testcasenumber;
	public String response_field39;
	public String txnid_acqresponse;
	public String delayedresponse_acq;
	public String txnid_acqresponse_delayed;
	public String RRN;
	public byte[] originaldataelemnts;
	public static SEISOB93Packager ISO93bpkg = new SEISOB93Packager();
	public static ExtentHtmlReporter htmlReporter;
	public static ExtentReports extent;
	public static ExtentTest test;
	public static Instant startTransaction;
	public IssuerSimulator is= IssuerSimulator.getInstance();
	public GenericValidations gv = new GenericValidations();
	


private static Map<Integer, String> responseMap = new HashMap<Integer, String>();
	
	@Before("~@IssuerUnavailable")
	public void before() throws Throwable {
		gv.beforeScenario();
	}

	@Before("@IssuerUnavailable")

	public void before1() throws Throwable {
		gv.beforeScenario1();
	}	
	


@Given("^Validation of scenario \"([^\"]*)\" for tran type \"([^\"]*)\" and CardNumber \"([^\"]*)\"$")
	public void validation_of_scenario_for_tran_type_and_CardNumber(String arg1, String arg2, String arg3) throws Throwable {
	testcasenumber=arg1;
	logger.info("Executing test case with TestCaseNumber == "+ testcasenumber+ " TranType == " + arg2 + "CardNumber == " + arg3 );    
	}	
	
//Step Definitions for acquirer initiating 1200

@Given("Initiate \"([^\"]*)\" transaction for \"([^\"]*)\" using \"([^\"]*)\"$")
public void initiate_transaction_for_cardNumber_using_Amount(String trantype, String cardnum, String amount) throws Throwable {
	logger.info("TranType == " + trantype + "CardNumber == " + cardnum );
	initializeISOMessage(ISO93bpkg);
	isoMsg.set(2, cardnum);
	isoMsg.set(4, amount);
	setTranType(trantype);

//	setTrackData("TrackData");
//	setPINData("PINData");
System.out.println(isoMsg.getString(32));
	RRN=isoMsg.getString(37);
	MessageMap.setValue("requestmessage", isoMsg);
  } 



@Given("^Initiate transaction with \"([^\"]*)\" \"([^\"]*)\" CVV as \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" for Amount \"([^\"]*)\" qualifying \"([^\"]*)\"$")
public void initiate_transaction_with_CVV_as_for_Amount_qualifying(String tranClass, String cardnum, String cvv, String cardproductid, String trantype, String mcc, String trackdata, String pindata, String cvv2data, String amount, String limitchk) throws Throwable {
	 initializeISOMessage(ISO93bpkg);
	 isoMsg.set(2, cardnum);
	 isoMsg.set(4, amount);
	 isoMsg.set(26, mcc);
	// isoMsg.set(45, setTrackData1(cvv));
//      isoMsg.set(35, setTrackData2());
	 setTranType(trantype);
	 isoMsg.set(45,setTrackData1(cvv));
	 isoMsg.set(35,setTrackData2());
	 setPINData(pindata);
	 isoMsg.set(53, "0101010101");
	 setServiceRestrictionCode();
	 setCVV2Data(cvv2data);
	 setPOSDataCode(tranClass);
	 setCaseNumber(testcasenumber);
	 RRN=isoMsg.getString(37);
	 System.out.println("pos data code"+isoMsg.getString(22));
	 System.out.println("TrackData1"+isoMsg.getString(45));
	 System.out.println("TrackData2"+isoMsg.getString(35));

	
	 MessageMap.setValue("requestmessage", isoMsg);	

}

@Given("^Initiate transaction with \"([^\"]*)\" \"([^\"]*)\" CVV as \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" for Amount \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\"$")
public void initiate_transaction_with_CVV_as_for_Amount(String transactionclassification, String CardNumber, String cvv, String CardProductId, String TranType, String merchantcategorycode, String trackData, String PINdata, String Amount, String CurrencyCodeTransaction, String BusinessZoneCode) throws Throwable {
  initializeISOMessage(ISO93bpkg);
	 isoMsg.set(2, CardNumber);
	 isoMsg.set(4, Amount);
	 isoMsg.set(26, merchantcategorycode);
//     isoMsg.set(49, CurrencyCodeTransaction);
//     isoMsg.set(48, BusinessZoneCode);
	 isoMsg.set(45, setTrackData1(cvv));
//	 isoMsg.set(35, setTrackData2());
	 setTranType(TranType);
	 setTrackData(trackData);
	 setPINData(PINdata);
	 isoMsg.set(53, "0101010101");
	 isoMsg.set(32, "910555");
	 setServiceRestrictionCode();
	 setPOSDataCode(transactionclassification);
	 setCaseNumber(testcasenumber);
	 RRN=isoMsg.getString(37);
	 System.out.println("Acqinstcode "+isoMsg.getString(32));
	 System.out.println("pos data code "+isoMsg.getString(22));
	 System.out.println("TrackData1 "+isoMsg.getString(45));
	 System.out.println("TrackData2 "+isoMsg.getString(35));

}

@Given("^Initiate \"([^\"]*)\" transaction for \"([^\"]*)\" CVV as \"([^\"]*)\"$")
public void initiate_transaction_for_CVV_as(String trantype, String cardnum, String cvv) throws Throwable {
  
		logger.info("TranType == " + trantype + "CardNumber == " + cardnum);
		initializeISOMessage(ISO93bpkg);
		setCaseNumber(testcasenumber);
		isoMsg.set(2, cardnum);
		setTranType(trantype);
		RRN=isoMsg.getString(37);
		isoMsg.set(45, setTrackData1(cvv));
		isoMsg.set(35, setTrackData2());
		setPINData("PINData");
		isoMsg.set(22, "510101510300");
		if(trantype.equals("Cash")) {
			isoMsg.set(22, "210501210100");
	  		isoMsg.set(26, "6011");
		}
		isoMsg.set(53, "0101010101");
	  	setServiceRestrictionCode();
	  	startTransaction=Instant.now();
	  	System.out.println("startime"+startTransaction);
		System.out.println("pos data code in request"+isoMsg.getString(22));
		MessageMap.setValue("requestmessage", isoMsg);			
	  }


@Given("^Initiate \"([^\"]*)\" \"([^\"]*)\" transaction for \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\"$")
public void initiate_transaction_with(String trantype, String tranclass, String cardnum, String mcc, String trackdata, String pindata,String cvv, String pos1, String pos2, String pos4, String pos5, String pos6, String pos7, String pos8, String pos10) throws Throwable {
 
	 initializeISOMessage(ISO93bpkg);
	 isoMsg.set(2, cardnum);
	 isoMsg.set(26, mcc);
	 isoMsg.set(22, pos1+pos2+"0"+pos4+pos5+pos6+pos7+pos8+"0"+pos10+"00");
	 setTranType(trantype);
	 if (trackdata.equals("TrackData")) {
	 isoMsg.set(45, setTrackData1(cvv));
	 isoMsg.set(35, setTrackData2());
	 setPINData(pindata);
	 isoMsg.set(53, "0101010101");
	 setServiceRestrictionCode();
	 RRN=isoMsg.getString(37);
	 MessageMap.setValue("requestmessage", isoMsg);
	 }
 
}

 


@Given("^Initiate \"([^\"]*)\" \"([^\"]*)\" transaction for \"([^\"]*)\"$")
public void initiate_transaction_for_trantype_tranclassification(String trantype, String tranclass, String cardnum) throws Throwable {
	 logger.info("TranType == " + trantype + "CardNumber == " + cardnum );
		initializeISOMessage(ISO93bpkg);
		isoMsg.set(2, cardnum);
		setTranType(trantype);
		setTransactionClassification(tranclass);
		setCaseNumber(testcasenumber);
		RRN=isoMsg.getString(37);
	    MessageMap.setValue("requestmessage", isoMsg);

}
@Given("^Initiate \"([^\"]*)\" \"([^\"]*)\" transaction for \"([^\"]*)\" CVV as \"([^\"]*)\" by setting value \"([^\"]*)\" in field \"([^\"]*)\" , field id \"([^\"]*)\"and acqId \"([^\"]*)\"$")
public void initiate_transaction_for_CVV_as_by_setting_value_in_field_field_id_and_acqId(String trantype, String tranclass, String cardnum, String cvv, String value, String fieldname, String fieldid, String acqinstid) throws Throwable {
   
	 initializeISOMessage(ISO93bpkg);
	 setCaseNumber(testcasenumber);
	 isoMsg.set(2, cardnum);
	 setTranType(trantype);
	 isoMsg.set(32, acqinstid);
	 isoMsg.set(45, setTrackData1(cvv));
	 isoMsg.set(35, setTrackData2());

	 setTransactionClassification(tranclass);
	 if (fieldname.equals("SrcEndPoint")) {
		 byte[] tpdu = modifySourceEndPoint(value,isoMsg.getHeader());
		  isoMsg.setHeader(tpdu);
		  System.out.println("Header modified with changed source endpoint "+Arrays.toString(isoMsg.getHeader()));
	  }
	 else {
	   isoMsg.set(fieldid, value);
	   }
	 RRN=isoMsg.getString(37);
	 MessageMap.setValue("requestmessage", isoMsg);	

   }

@Given("^Initiate \"([^\"]*)\" \"([^\"]*)\" transaction for \"([^\"]*)\" CVV as \"([^\"]*)\" by setting value \"([^\"]*)\" in field \"([^\"]*)\" , field id \"([^\"]*)\"and FwdId \"([^\"]*)\"$")
public void initiate_transaction_for_CVV_as_by_setting_value_in_field_field_id_and_FwdId(String trantype, String tranclass, String cardnum, String cvv, String value, String fieldname, String fieldid, String fwinstid) throws Throwable {
   initializeISOMessage(ISO93bpkg);
	 isoMsg.set(2, cardnum);
	 setTranType(trantype);
	 isoMsg.set(33, fwinstid);
	 setTransactionClassification(tranclass);
	 isoMsg.set(45, setTrackData1(cvv));
	 isoMsg.set(35, setTrackData2());
	  if (fieldname.equals("SrcEndPoint")) {
		 byte[] tpdu = modifySourceEndPoint(value,isoMsg.getHeader());
		  isoMsg.setHeader(tpdu);
		  System.out.println("Header modified with changed source endpoint "+Arrays.toString(isoMsg.getHeader()));
	  }
	 else {
	   isoMsg.set(fieldid, value);
	   }
	  RRN=isoMsg.getString(37);
	  MessageMap.setValue("requestmessage", isoMsg);	
      }

@Given("^Initiate \"([^\"]*)\" transaction for \"([^\"]*)\" CVV as \"([^\"]*)\" using \"([^\"]*)\" (\\d+) and \"([^\"]*)\"$")
public void initiate_transaction_for_CVV_as_using_and(String arg1, String arg2, String arg3, String arg4, int arg5, String arg6) throws Throwable {
	logger.info("TranType == " + arg1 + "CardNumber == " + arg2 + "CVV == " + arg3 +  "FieldName == " + arg4 + "FieldId == " + arg5 + "Value == " + arg6);
	initializeISOMessage(ISO93bpkg);
	setCaseNumber(testcasenumber);
	isoMsg.set(2, arg2);
	setTranType(arg1);
	originaldataelemnts=setOriginalDataElements(isoMsg.getString(24),isoMsg.getString(32),isoMsg.getString(37),isoMsg.getString(41),isoMsg.getString(42));
	if(!arg1.equals("Purchase_ReversalAdvice_Request")) {
	isoMsg.set(45, setTrackData1(arg3));
	isoMsg.set(35, setTrackData2());
	}
	if(arg6.equals("Missing")) {
		isoMsg.unset(arg5);
	}
   else if(arg5==56) {
	     isoMsg.set(56, originaldataelemnts);
	}
	else {
	isoMsg.set(arg5, arg6);
	}
	if(responsemessage!=null) {
		if(responsemessage.getString(37) != null && !responsemessage.getString(37).isEmpty()) {
	     isoMsg.set(37, responsemessage.getString(37));
	}
	}
	if(arg1.equals("Purchase_ReversalAdvice_Request")) {
    	 isoMsg.set(30, isoMsg.getString(4));
    	 isoMsg.set(56, "400");
         isoMsg.set(39, "920");
         isoMsg.set(22, "510101510300");
    	 isoMsg.unset(14);
    	 isoMsg.set(56, originaldataelemnts);
    	    if(arg6.equals("Missing")) {
    		 isoMsg.unset(arg5);
 			}
	    	 else if(arg6.equals("PINData")) {
	   		  byte[] pindata= {(byte)181,10,(byte)170,(byte)158,15,77,72,(byte)182};
	   		  isoMsg.set(52, pindata);
	   		}
	   	    else if(arg6.equals("TrackData1")) {
	   		 // isoMsg.set(45, setTrackData1());
	   		}
	   	    else if(arg6.equals("TrackData2")) {
	   	 
	   		  isoMsg.set(35, setTrackData2());
	   	     }
	   	    else if(arg6.equals("TrackData3")) {
	   		 isoMsg.set(36, setTrackData3());
	   		}
	  else {
    		 isoMsg.set(arg5, arg6);
	 }

     }
	 RRN=isoMsg.getString(37);
	 MessageMap.setValue("requestmessage", isoMsg);	
	 System.out.println("pos data code in Purchase_ReversalAdvice_Request"+isoMsg.getString(22));
  }

@Given("^Input ISOMsg with \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\"$")

public void input_ISOMsg_with_following_values(String CardNum,String TranType,String merchantcategorycode,String trackdata1,String trackdata2,String PINdata,String cvv,String securitydata,String Pos1,String Pos2,String Pos4, String Pos5,String Pos6,String Pos7,String Pos8,String Pos10) throws Throwable {
		
		String PosDataCode= Pos1+Pos2+"0"+Pos4+Pos5+Pos6+Pos7+Pos8+"0"+Pos10+"00";
		logger.info(PosDataCode);
		logger.info("trackdata1== " + TranType + "  mcc== "
				+ merchantcategorycode);
	
		initializeISOMessage(ISO93bpkg);
		setCaseNumber(testcasenumber);
		setTranType(TranType);
		isoMsg.set(26,merchantcategorycode);
		if(trackdata1.equals("TrackData1") && trackdata2.equals("TrackData2") ) {
			isoMsg.set(45, setTrackData1(cvv));
			isoMsg.set(35, setTrackData2());
		}
		if(PINdata.equals("PINData")) {
		setPINData(PINdata);
		}
		if(securitydata.equals("SecData")) {
			isoMsg.set(53, "0101010101");
		}
		setServiceRestrictionCode();
		isoMsg.set(22,PosDataCode);
		isoMsg.set(2,CardNum);
		RRN=isoMsg.getString(37);
		MessageMap.setValue("requestmessage", isoMsg);	
		}
//`````````````````````````````````````````````````````````````````````````````````````````````		

//Step Definitions for acquirer initiating 1420

@Given("^Acquirer initiates \"([^\"]*)\" advice request for \"([^\"]*)\"$")
public void acquirer_initiates_advice_request_for(String trantype, String cardnum) throws Throwable {
    
	logger.info("TranType == " + trantype + "CardNumber == " + trantype );
	initializeISOMessage(ISO93bpkg);
	setCaseNumber(testcasenumber);
	setTranType(trantype);
     isoMsg.set(2, cardnum);
     if(!(MessageMap.getValue("requestmessage")==null)) {
	   isoMsg.set(4, (MessageMap.getValue("requestmessage")).getString(4));
	   isoMsg.set(37, (MessageMap.getValue("requestmessage")).getString(37));
	   isoMsg.set(22,(MessageMap.getValue("requestmessage")).getString(22));
	   }
    isoMsg.set(39, "000");
	isoMsg.set(30, isoMsg.getString(4));
	isoMsg.unset(14);
	isoMsg.unset(35);
	isoMsg.unset(45);
	byte[] originaldataelemnts=setOriginalDataElements(isoMsg.getString(24),isoMsg.getString(32),isoMsg.getString(37),isoMsg.getString(41),isoMsg.getString(42));
    isoMsg.set(56, originaldataelemnts);
    reversalmessage_acq=isoMsg;
    MessageMap.setValue("reversalmessage_acq", reversalmessage_acq);

  }
 //Step Definitions for acquirer initiating 1421
   
   @When("^Acquirer initiates \"([^\"]*)\" advice request after \"([^\"]*)\"$")
   public void acquirer_initiates_advice_request_after(String trantype, String timeout) throws Throwable {
   	isoMsg=MessageMap.getValue("reversalmessage_acq");
   	isoMsg.setMTI("1421");
   	AcquirerSimulator.setISOMessage(isoMsg);
   	Instant curr_time= Instant.now();
    long delay=calculateTimeoutInterval(startTransaction,curr_time,timeout);
    Thread.sleep(delay);
    AcquirerSimulator.sendMessage("AcquirerRoute");
    acqreversalrepeatrequest=isoMsg;
       
   }
   
   @When("^After interval of \"([^\"]*)\" milliseconds ,acquirer forwards  \"([^\"]*)\"$")
   public void after_interval_of_milliseconds_acquirer_forwards_for(String timeout, String trantype) throws Throwable {
   	acqreversalrequest.setMTI("1421");
   	Thread.sleep(Long.valueOf(timeout));
   	AcquirerSimulator.sendMessage("AcquirerRoute");
   	
   }
   
   
   //Acquirer forwards request to Smartedge

 @When("^Acquirer forwards the message to SmartEdge$")
	public void send_ISOMsg_to_se_platform() throws Throwable {
	  System.out.println("acquirer sends message with amt " +isoMsg.getString(4));
      AcquirerSimulator.sendMessage("AcquirerRoute");
	    startTransaction = Instant.now();
	}
 
 @When("^Acquirer forwards the advice request to SmartEdge after \"([^\"]*)\" miliseconds$")
	public void acquirer_forwards_the_advice_request_to_SmartEdge_after_miliseconds(String timeout) throws Throwable {
	   Instant curr_time= Instant.now();
	   long delay=calculateTimeoutInterval(startTransaction,curr_time,timeout);
	   Thread.sleep(delay);
	   AcquirerSimulator.sendMessage("AcquirerRoute");

	}
 
 @When("^Acquirer forwards the message to SmartEdge using SourceEndPoint as \"([^\"]*)\"$")
 public void send_ISOMsg_to_se_platform_using_srcep(String srcep) throws Throwable {
	  System.out.println("acquirer sends message " +isoMsg.getMTI());
	   AcquirerSimulator.sendMessage_using_ep(srcep,"AcquirerRoute");
	  
	}
 @When("^Acquirer forwards the message to SmartEdge using SourceEndPoint as \"([^\"]*)\" and via FwdRoute$")
 public void acquirer_forwards_the_message_to_SmartEdge_using_SourceEndPoint_as_and_via_FwdRoute(String srcep) throws Throwable {
	 System.out.println("acquirer sends message " +isoMsg.getMTI());
	   AcquirerSimulator.sendMessage_using_ep(srcep,"ForwardRoute");
 }
 
 //Issuer receiving message, processing and sending itback to platform
	  
  @When("^Message is processed by issuer and repsonse is sent back to the acquirer$")
		public void message_processed_by_issuer_and_response_sent_back_to_acquirer() throws Throwable {
          receivedmessage=(ISOMsg) is.receiveRequest();
          System.out.println("issuer receives message");
	      if(MessageMap.chkKey("receivedmessage")){
		  		if((MessageMap.getValue("receivedmessage")).equals(receivedmessage)) {
		  			return;
		  		}
		      }
		  MessageMap.setValue("receivedmessage",receivedmessage );
		  System.out.println("issuer receives message"+MessageMap.getValue("receivedmessage"));
		  String txnid = TLVMessage.getValue(MessageMap.getValue("receivedmessage").getBytes(48),"01");
		  System.out.println("transaction id of message received "+ txnid);
		  //Thread.sleep(1000);	
		  responsemessage=is.processMessage(receivedmessage);
		  is.sendResponse(responsemessage,"0");
		  System.out.println("SEnd processed response"+responsemessage);
		  System.out.println("Response code "+responsemessage.getString(39));
		  
		  MessageMap.setValue("responsemessage",responsemessage );
		  
		}
  
  @Then("^Verify the TransactionClassification \"([^\"]*)\" received by issuer$")
  public void verify_the_TransactionClassification_received_by_issuer(String tranclasscode) throws Throwable {
	  receivedmessage=(ISOMsg) is.receiveRequest();
	  MessageMap.setValue("receivedmessage",receivedmessage );
	  System.out.println("issuer receives message"+receivedmessage);
	  String txnid = TLVMessage.getValue(receivedmessage.getBytes(48),"01");
	  String txncode = TLVMessage.getValue(receivedmessage.getBytes(48),"17");
	  System.out.println("txn id received by issuer is "+txnid);
	  System.out.println("tranclasscode received by issuer is"+txncode);
	  Assert.assertTrue(txncode.equals(tranclasscode));
  }
  
  @When("^Issuer sends delayed response to smartedge but smartedge discards the late response$")
	public void issuer_send_delayed_response() throws Throwable {
	   responsemessage=is.processMessage(MessageMap.getValue("receivedmessage"));
	  is.sendResponse(responsemessage,"0");
	  System.out.println("SEnd processed response"+responsemessage);
	  logger.info("Txn id of response to initial request received by issuer is "+TLVMessage.getValue(responsemessage.getBytes(48),"01"));
	  MessageMap.setValue("responsemessage",responsemessage );
	  
	}

  @When("^Issuer Validates \"([^\"]*)\" ,processes the message and sends back the response$")
	public void issuer_validates_processes_sends_response_to_acquirer(String arg1) throws Throwable {
	  String timeout="0";
	  receivedmessage=(ISOMsg) is.receiveRequest();
	  System.out.println("issuer receives message"+receivedmessage);
	  MessageMap.setValue("receivedmessage",receivedmessage );
	  responsemessage=is.processMessage(receivedmessage);
     if(arg1.equals("Issuer_Timeout")) {
		 return; 
	  }
     
     if(arg1.equals("Issuer_LateResponse")) {
    	 timeout=TestProperties.getPropertyValue(TestProperties.TIMEOUT_LateResponse) ; 
    	 System.out.println(timeout);
	  }
	  is.sendResponse(responsemessage,timeout);
	  System.out.println("SEnd processed response"+responsemessage);
	  MessageMap.setValue("responsemessage",responsemessage );
	}

  @When("^Issuer processes the message, sets value \"([^\"]*)\" in field (\\d+) and sends back the response$")
  public void issuer_proceeses_message_sets_value_in_response(String value, int field) throws Throwable {
  receivedmessage=(ISOMsg) is.receiveRequest();
  MessageMap.setValue("receivedmessage",receivedmessage );
  System.out.println("issuer receives message"+receivedmessage);
  System.out.println("field is "+field);
  
  //Thread.sleep(1000);
  responsemessage=is.processMessage(receivedmessage);
  if(value.equals("Missing")) {
		System.out.println("Missing");
		responsemessage.unset(field);
	}
  else if(value.equals("PINData")) {
	  byte[] pindata= {(byte)181,10,(byte)170,(byte)158,15,77,72,(byte)182};
	  responsemessage.set(52, pindata);
	}
  else if(value.equals("TrackData1")) {
	 responsemessage.set(45, receivedmessage.getString(45));
  }

  else if(value.equals("TrackData2")) {
	   responsemessage.set(35, setTrackData2());
	}
  else if(value.equals("TrackData3")) {
	  responsemessage.set(36, setTrackData3());
	}
  else if(value.equals("OriginalDataElements")) {
	  byte[] originaldataelemnts=setOriginalDataElements(isoMsg.getString(24),isoMsg.getString(32),isoMsg.getString(37),isoMsg.getString(41),isoMsg.getString(42));
	  responsemessage.set(56, originaldataelemnts);
	}
    else {
  responsemessage.set(field, value);
  System.out.println("trackdata unset");
  }
  is.sendResponse(responsemessage,"0");
  
   MessageMap.setValue("responsemessage",responsemessage );
  }

  @When("^Issuer delays in sending the advice response$")
	public void issuer_delays_in_sending_advice_response() throws Throwable {
	  String timeout="0";
	  receivedmessage=(ISOMsg) is.receiveRequest();
	  System.out.println("issuer receives message"+receivedmessage);
	  MessageMap.setValue("receivedmessage",receivedmessage );

	   responsemessage=is.processMessage(receivedmessage);
  	   timeout=TestProperties.getPropertyValue(TestProperties.TIMEOUT_LateResponse) ; 
  	   System.out.println(timeout);
	  
	  is.sendResponse(responsemessage,timeout);
	  System.out.println("SEnd processed response"+responsemessage);
	  MessageMap.setValue("responsemessage",responsemessage );
	  
	}
  
  @When("^Issuer receives the message but does not send the response$")
	public void issuer_does_not_send_the_response() throws Throwable {
	  String timeout="0";
	  receivedmessage=(ISOMsg) is.receiveRequest();
	  System.out.println("Issuer receives purchase request at"+Instant.now());
	  MessageMap.setValue("receivedmessage",receivedmessage );
	  logger.info("Txn id of initial request received by issuer is "+TLVMessage.getValue(receivedmessage.getBytes(48),"01"));
	  System.out.println("issuer receives message at"+receivedmessage);
	  System.out.println("MCC in issuer receives message"+receivedmessage.getString(26));
	  System.out.println("Txn id of initial request received by issuer is "+TLVMessage.getValue(receivedmessage.getBytes(48),"01"));
	  System.out.println("Header in message "+Arrays.toString(receivedmessage.getHeader()));
	  String corid=MessageHeader.decodeHeader(receivedmessage.getHeader(), 22, 15);
	}
  
  
  @When("^Issuer receives the acquirer generated reversal advice request but does not send the response$")
	public void issuer_does_not_send_the_response_acqgenerated_reversaladvicerequest() throws Throwable {
	  String timeout="0";
	  acqreversalrequest=(ISOMsg) is.receiveRequest();
	  MessageMap.setValue("acqreversalrequest",acqreversalrequest );
	  System.out.println("Issuer receives reversal advice request"+Instant.now());
	  logger.info("Txn id of acq generated reversal advice request received by issuer is "+TLVMessage.getValue(acqreversalrequest.getBytes(48),"01"));

	  return;
	}
  
  
  
  @When("^Issuer processes the message sets field \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" and sends back the response$")
	public void issuer_processes_sets_response_sends_back(String fieldname, String fieldid, String value) throws Throwable {
	  String timeout="0";
	  receivedmessage=(ISOMsg) is.receiveRequest();
	  MessageMap.setValue("receivedmessage",receivedmessage );
	  logger.info("issuer receives message"+receivedmessage);
	  logger.info("MTI for  message received by issuer "+receivedmessage.getMTI());
	  logger.info("TranType for  message received by issuer "+receivedmessage.getString(3));
	  //Thread.sleep(1000);
	  responsemessage=is.processMessage(receivedmessage);
	  
	  if(value.equals("Missing")) {
		  responsemessage.unset(fieldid);
			
		}
	  
	  else if (fieldname.equals("SrcEndPoint")) {
		  
		  byte[] tpdu = modifySourceEndPoint(value,responsemessage.getHeader());
		  responsemessage.setHeader(tpdu);
		  System.out.println("Header modified with changed source endpoint "+Arrays.toString(responsemessage.getHeader()));
	  }
	  
      else if (fieldname.equals("DestEndPoint")) {
		  
		  byte[] tpdu = modifyDestEndPoint(value);
		  responsemessage.setHeader(tpdu);
	  }
	  
	  else {
	  responsemessage.set(fieldid, value);
	  }
	  
	  is.sendResponse(responsemessage,timeout);
	  logger.info("Issuer sends response message" +responsemessage);
	  logger.info("TranType for  response sent by issuer "+responsemessage.getString(3));
	  System.out.println("pos data code in response"+responsemessage.getString(22));
	  MessageMap.setValue("responsemessage",responsemessage ); 
	}
  
  
  @When("^Issuer processes the reversal advice request and sets field \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" and sends back the response to acquirer$")
  public void issuer_processes_the_reversal_advice_request_and_sets_field_and_sends_back_the_response_to_acquirer(String Fldname, String FldID, String value) throws Throwable {
	  acqreversalrequest=(ISOMsg) is.receiveRequest();
	  MessageMap.setValue("acqreversalrequest",acqreversalrequest );
	  logger.info("issuer receives acq generated reversal message"+acqreversalrequest);
	  logger.info("RRN for  message received by issuer "+acqreversalrequest.getString(37));
	  acqreversalresponsemessage=is.processMessage(acqreversalrequest);
	  acqreversalresponsemessage.set(FldID, value);
	  is.sendResponse(acqreversalresponsemessage,"0");
	  logger.info("Issuer sends response message to acq generated reversal" +acqreversalresponsemessage);
	  MessageMap.setValue("acqreversalresponsemessage",acqreversalresponsemessage ); 
	    
  }

  @Then("^Verify reject response \"([^\"]*)\" received by issuer as part of reversal advice generated by SmartEdge due to consistency check mismatch$")
  public void verify_reject_response_received_by_issuer_as_part_of_reversal_advice_generated_by_SmartEdge_due_to_consistency_check_mismatch(String response) throws Throwable {
	  reversalmessage=(ISOMsg) is.receiveRequest();
      MessageMap.setValue("reversalmessage",reversalmessage);
	  logger.info("Reversal RequestMessage being received by  issuer from SmartEdge"+reversalmessage);
	  logger.info("Response code in  RequestMessage being received by  issuer"+reversalmessage.getString(39));
	  String RejectResponse = reversalmessage.getString(39);
	   if (RejectResponse.equals(response)) {
		  logger.info("test passed");
	  }
	  else {
			
			Assert.fail();
		}
	 }
  

  @Then("^Issuer processes the reversal advice request and sends back the response$")
  public void issuer_processes_the_message_and_sends_back_the_response() throws Throwable {
	  reversalresponsemessage=is.processMessage(MessageMap.getValue("reversalmessage"));
	  is.sendResponse(reversalresponsemessage,"0");
	  logger.info("Issuer sends response message to SmartEdge generated reversal" +reversalresponsemessage);
	  System.out.println("message header in reversal response message sent by issuer"+Arrays.toString(reversalresponsemessage.getHeader()));
	  MessageMap.setValue("reversalresponsemessage",reversalresponsemessage ); 
  }
  
  @Then("^Issuer processes the message and sends back the response$")
  public void issuer_processes_the_request_and_sends_back_the_response() throws Throwable {
	  responsemessage=is.processMessage(MessageMap.getValue("receivedmessage"));
	  is.sendResponse(responsemessage,"0");
	  logger.info("Issuer sends response message to original request" +responsemessage);
	  System.out.println("message header in  response message sent by issuer"+Arrays.toString(responsemessage.getHeader()));
	  MessageMap.setValue("responsemessage",responsemessage ); 
  }

  @Then("^Issuer processes the acquirer generated reversal advice request and sends back the response$")
  public void issuer_processes_the_acqgen_message_and_sends_back_the_response() throws Throwable {
	  System.out.println("reversal message received by issuer is "+MessageMap.getValue("reversalmessage_acq"));
	  System.out.println("message header in reversal message received by issuer"+Arrays.toString(MessageMap.getValue("reversalmessage_acq").getHeader()));
	  reversalresponsemessage=is.processMessage(MessageMap.getValue("reversalmessage_acq"));
	  is.sendResponse(reversalresponsemessage,"0");
	  logger.info("Issuer sends response message to SmartEdge generated reversal" +reversalresponsemessage);
	  System.out.println("message header in reversal response message sent by issuer"+Arrays.toString(reversalresponsemessage.getHeader()));
	  MessageMap.setValue("reversalresponsemessage", reversalresponsemessage);
  }

  @When("^Issuer processes the acquirer generated reversal request and sends back the response$")
  public void issuer_processes_the_acquirer_generated_reversal_request_and_sends_back_the_response() throws Throwable {
	  acqreversalresponsemessage=is.processMessage(MessageMap.getValue("acqreversalrequest"));
	  is.sendResponse(acqreversalresponsemessage,"0");
	  logger.info("Issuer sends response message to acquirer generated reversal" +acqreversalresponsemessage);
	  logger.info("Txn id ofresponse to  acq generated reversal advice request received by issuer is "+TLVMessage.getValue(acqreversalresponsemessage.getBytes(48),"01"));
	  MessageMap.setValue("acqreversalresponsemessage", acqreversalresponsemessage);

  }

  
  @Then("^Verify Issuer receives all remaining repeat advices for the transaction$")
  public void issuer_receives_all_pending_repeat_request() throws Throwable {

	  acqreversalrepeatrequest=is.receiveRequest();
  }

   
 
  
  @When("^Issuer receives the platform generated repeats to acquirer generated reversal request and responds after \"([^\"]*)\" repeats with expected timeout \"([^\"]*)\"$")
  public void issuer_receives_the_platform_generated_repeats_to_acquirer_generated_reversal_request_and_responds_after_repeats_with_expected_timeout(String repeatcnt, String timeout) throws Throwable {
   
		  if(repeatcnt.equals("1")) {
			  long delay=calculateTimeoutInterval(startTransaction,Instant.now(),Integer.toString(Integer.parseInt(timeout)+5000));
			  System.out.println("start time is"+startTransaction);
			  System.out.println("cuurtime is"+Instant.now());
			  System.out.println("delay is"+delay);
			  Thread.sleep(delay);
			  repeatreversal_advrequest=(ISOMsg) is.receiveRequest();
			  logger.info("Txn id of repeat request received by issuer is "+TLVMessage.getValue(repeatreversal_advrequest.getBytes(48),"01"));
			  responsemessage=is.processMessage(repeatreversal_advrequest);
			  logger.info("Msg header in response to reversal sent by se "+Arrays.toString(responsemessage.getHeader()));
			  is.sendResponse(responsemessage,"0");
			  logger.info("txn id of the the response message sent after repeat request is " +TLVMessage.getValue(responsemessage.getBytes(48),"01"));
			  System.out.println("processsed advice response" +responsemessage);

		  }
		  
		  if(repeatcnt.equals("2")) {
			  long delay1=calculateTimeoutInterval(startTransaction,Instant.now(),"18000");
			  Thread.sleep(delay1);
			  repeatreversal_advrequest=(ISOMsg) is.receiveRequest();
			  System.out.println("Time at which 1st repeat is recieded");
			  System.out.println("received advice message" +receivedmessage);
			  long delay2=calculateTimeoutInterval(startTransaction,Instant.now(),"33000");
			  Thread.sleep(delay2);
			  repeatreversal_advrequest=(ISOMsg) is.receiveRequest();
			  Thread.sleep(1000);
			  responsemessage=is.processMessage(repeatreversal_advrequest);
			  is.sendResponse(responsemessage,"0");
			  System.out.println("processsed advice response" +responsemessage);
		  
		  }
		  
		  if(repeatcnt.equals("3")) {

			  long delay1=calculateTimeoutInterval(startTransaction,Instant.now(),"18000");
			  Thread.sleep(delay1);
			  repeatreversal_advrequest=(ISOMsg) is.receiveRequest();
			  long delay2=calculateTimeoutInterval(startTransaction,Instant.now(),"33000");
			  Thread.sleep(delay2);
			  repeatreversal_advrequest=(ISOMsg) is.receiveRequest();
			  long delay3=calculateTimeoutInterval(startTransaction,Instant.now(),"48000");
			  Thread.sleep(delay3);
			  repeatreversal_advrequest=(ISOMsg) is.receiveRequest();
			    responsemessage=is.processMessage(repeatreversal_advrequest);
			  is.sendResponse(responsemessage,"0");
			  
			  
		  }
		  
	  
	  }
	
  @Then("^Issuer receives the platform generated repeats to platform generated reversal request and responds after \"([^\"]*)\" repeats with expected timeout \"([^\"]*)\"$")
  public void issuer_receives_the_platform_generated_repeats_to_platform_generated_reversal_request_and_responds_after_repeats_with_expected_timeout(String repeatcnt, String timeout) throws Throwable {
   
 		  if(repeatcnt.equals("1")) {
 			  String time=Integer.toString(Integer.parseInt(timeout)+8000);
 			  long delay=calculateTimeoutInterval(startTransaction,Instant.now(),time);
 			  Thread.sleep(delay);
 			  System.out.println("delay is"+delay);
 			  repeatreversal_advrequest=(ISOMsg) is.receiveRequest();
 			  System.out.println("issuer receives first repeat at"+Instant.now());
 			  logger.info("Txn id of repeat request received by issuer is "+TLVMessage.getValue(repeatreversal_advrequest.getBytes(48),"01"));
 			  responsemessage=is.processMessage(repeatreversal_advrequest);
 			  logger.info("Msg header in response to reversal sent by se "+Arrays.toString(responsemessage.getHeader()));
 			  is.sendResponse(responsemessage,"0");
 			  logger.info("txn id of the the response message sent after repeat request is " +TLVMessage.getValue(responsemessage.getBytes(48),"01"));
 			  System.out.println("processsed advice response" +responsemessage);
 		      
 		  }
 		  
 		  if(repeatcnt.equals("2")) {
 			 String time=Integer.toString(Integer.parseInt(timeout)+16000);
 			  long delay1=calculateTimeoutInterval(startTransaction,Instant.now(),Integer.toString(Integer.parseInt(timeout)+8000));
 			  Thread.sleep(delay1);
 			  repeatreversal_advrequest=(ISOMsg) is.receiveRequest();
 			  System.out.println("received advice repeat message" +repeatreversal_advrequest+ Instant.now());
 			  long delay2=calculateTimeoutInterval(startTransaction,Instant.now(),Integer.toString(Integer.parseInt(timeout)+16000));
 			  Thread.sleep(delay2);
 			  repeatreversal_advrequest=(ISOMsg) is.receiveRequest();
 			   responsemessage=is.processMessage(repeatreversal_advrequest);
 			  is.sendResponse(responsemessage,"0");
 			  System.out.println("processsed advice response" +responsemessage);
 		  
 		  }
 		  
 		  if(repeatcnt.equals("3")) {
 			  long delay1=calculateTimeoutInterval(startTransaction,Instant.now(),Integer.toString(Integer.parseInt(timeout)+8000));
 			  Thread.sleep(delay1);
 			  repeatreversal_advrequest=(ISOMsg) is.receiveRequest();
 			  long delay2=calculateTimeoutInterval(startTransaction,Instant.now(),Integer.toString(Integer.parseInt(timeout)+16000));
 			  Thread.sleep(delay2);
 			  repeatreversal_advrequest=(ISOMsg) is.receiveRequest();
 			  long delay3=calculateTimeoutInterval(startTransaction,Instant.now(),Integer.toString(Integer.parseInt(timeout)+29000));
 			  Thread.sleep(delay3);
 			  repeatreversal_advrequest=(ISOMsg) is.receiveRequest();
 			    responsemessage=is.processMessage(repeatreversal_advrequest);
 			  is.sendResponse(responsemessage,"0");
 			  
 			  
 		  }
 		  
 		  if(repeatcnt.equals("All")) {
 			  long delay1=calculateTimeoutInterval(startTransaction,Instant.now(),"13000");
 			  Thread.sleep(delay1);
 			  repeatreversal_advrequest=(ISOMsg) is.receiveRequest();
 			  long delay2=calculateTimeoutInterval(startTransaction,Instant.now(),"18000");
 			  Thread.sleep(delay2);
 			  repeatreversal_advrequest=(ISOMsg) is.receiveRequest();
 			  long delay3=calculateTimeoutInterval(startTransaction,Instant.now(),"23000");
 			  Thread.sleep(delay3);
 			  repeatreversal_advrequest=(ISOMsg) is.receiveRequest();
 			  return;		  
 		  }
 	  }
	
  @When("^Issuer receives all the platform generated repeats to acquirer generated reversal request but does not respond$")
  
	public void issuer_receives_all_repeats_but_no_response() throws Throwable {
	
	  long delay1=calculateTimeoutInterval(startTransaction,Instant.now(),"18000");
	  Thread.sleep(delay1);
	  repeatreversal_advrequest=(ISOMsg) is.receiveRequest();
	  System.out.println("Issuer receives 1st repeat"+Instant.now());
	  long delay2=calculateTimeoutInterval(startTransaction,Instant.now(),"33000");
	  Thread.sleep(delay2);
	  repeatreversal_advrequest=(ISOMsg) is.receiveRequest();
	  System.out.println("Issuer receives 2nd repeat"+Instant.now());
	  long delay3=calculateTimeoutInterval(startTransaction,Instant.now(),"48000");
	  Thread.sleep(delay3);
	  repeatreversal_advrequest=(ISOMsg) is.receiveRequest();
	  System.out.println("Issuer receives 3rd repeat"+Instant.now());
	  return;
	  
  }
  
  @Then("^Issuer receives the platform generated repeats to platform generated reversal request after \"([^\"]*)\" miliseconds$")
  public void issuer_receives_the_platform_generated_repeats_to_platform_generated_reversal_request_after_miliseconds(String interval) throws Exception {
	  long delay1=calculateTimeoutInterval(startTransaction,Instant.now(),interval);
	  Thread.sleep(delay1);
	  repeatreversal_advrequest=(ISOMsg) is.receiveRequest();
  }
 
  
  @Then("^Verify response \"([^\"]*)\"  received by issuer as part of advice request$")

 	public void verify_issuer_response(String response) throws Throwable {

 	  reversalmessage=(ISOMsg) is.receiveRequest();
 	  System.out.println("issuer recieves first reversal at"+Instant.now());
 	  MessageMap.setValue("reversalmessage", reversalmessage);
 	  logger.info("Reversal RequestMessage being received by  issuer"+reversalmessage+ Instant.now());
 	  logger.info("Response code in Reversal RequestMessage being received by  issuer"+reversalmessage.getString(39));
 	  logger.info("Transaction id in se generated reversal request "+TLVMessage.getValue(reversalmessage.getBytes(48),"01"));
 	  String RejectResponse = reversalmessage.getString(39);
 	  System.out.println("RejectResponse"+RejectResponse);
 	  if(RejectResponse.equals(response)) {
 		  logger.info("test passed");
 	  }
 	  
 	  
 	  else {
 			
 			Assert.fail();
 		}
 	 }

   
   @Then("^Verify response \"([^\"]*)\" and \"([^\"]*)\" received by issuer as part of reversal advice request generated by SmartEdge$")

  	public void verify_issuer_response_in_reversal_advice_request(String response, String rejectcode) throws Throwable {

  	  reversalmessage=(ISOMsg) is.receiveRequest();
  	  MessageMap.setValue("reversalmessage", reversalmessage);
  	  logger.info("Reversal RequestMessage being received by  issuer"+reversalmessage);
  	  logger.info("Response code in  RequestMessage being received by  issuer"+reversalmessage.getString(39));
  	  System.out.println("Header in reversal request received by issuer is "+Arrays.toString(reversalmessage.getHeader()));
  	  System.out.println("Card num in reversal advice message recieved by issuer"+reversalmessage.getString(2));
  	  String AdviceResponse = reversalmessage.getString(39);
  	  String AdviceRejectCode= reversalmessage.getString(46);
  	  System.out.println("AdviceResponse :"+AdviceResponse);
  	  System.out.println("AdviceRejectCode :"+AdviceRejectCode);
  	  boolean result=((AdviceResponse.equals(response)) && (AdviceRejectCode.equals(rejectcode)));
  		  Assert.assertTrue(result);
  	  
  	  
  	
  	}

  //Verify acquirer response
  
  @Then("^Verify acquirer response \"([^\"]*)\" and \"([^\"]*)\"$")
	public void verify_acquirer_response_and(String arg1, String arg2) throws Throwable {
		logger.info("Expected response arg 1 == " + arg1);
		logger.info("Expected response arg 2 == " + arg2);
		responseMap= AcquirerSimulator.receiveResponse(ISO93bpkg,"AcquirerRoute");
		System.out.println("acq receives response at"+Instant.now());
		String response_field39 = responseMap.get(39);
		System.out.println("Response_39"+response_field39);
		String response_field46 = responseMap.get(46);
		System.out.println("Response_39"+response_field46);
		logger.info("Actual Acquirer Response for field46 == " + response_field46);
		logger.info("Actual Acquirer Response for field39 == " + response_field39);
		logger.info("txn id of response received by acquirer"+responseMap.get(48));
		if (response_field46 != null && response_field39 != null 
				&& response_field46.equals(arg2)
				&& response_field39.equals(arg1)) {

			logger.info("test passed");
			//Thread.sleep(2000);
		} else {
			// logger.info("FAILED TEST issuer field " + response);
			Assert.fail();
		}
		MessageMap.printMap();
		System.out.println("pos data code in Purchase_ReversalAdvice_Response"+isoMsg.getString(22));
		
	}

  @Then("^Verify acquirer response \"([^\"]*)\" and \"([^\"]*)\" on FwdRoute$")
  public void verify_acquirer_response_and_on_FwdRoute(String arg1, String arg2) throws Throwable {
	  responseMap= AcquirerSimulator.receiveResponse(ISO93bpkg,"ForwardRoute");
		String response_field39 = responseMap.get(39);
		String response_field46 = responseMap.get(46);
		Assert.assertTrue((response_field39.equals(arg1))&& (response_field46.equals(arg2)));
  } 

  @Then("^Verify repeat advice requests from acquirer SAF till ADVICE_MAX_REPEATS (\\d+) is reached$")
	public void verify_repeat_advice_requests_from_acquirer(int arg1) throws Throwable {
	  for(int i =0; i<arg1;i++) {
		  AcquirerSimulator.sendMessage("AcquirerRoute");
	  }
	  
	}


 
  
  @Then("^Verify if acquirer received (\\d+) response$")
	public void verify_if_acquirer_received_response(int arg1) throws Throwable {	
		logger.info("Expected acquirer response  == " + arg1);
		responseMap= AcquirerSimulator.receiveResponse(ISO93bpkg,"AcquirerRoute");
		String response_field39 = responseMap.get(39);
		System.out.println("Response_39"+response_field39);

		logger.info("Actual Acquirer Response for field39 == " + response_field39);

		if (response_field39 != null && !response_field39.equals("")
				&& Integer.parseInt(response_field39) == arg1) {

			logger.info("test passed");
		} else {
			// logger.info("FAILED TEST issuer field " + response);
			Assert.fail();
		}
		 System.out.println("Acqinstcode"+isoMsg.getString(32));

	   MessageMap.printMap();
	   
	}
  @When("^Verify if acquirer received \"([^\"]*)\" response with \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\"$")
  public void verify_if_acquirer_received_response_with(String AcquirerResponse_F39, String AmountBilling, String CurrencyCodeBilling, String AmountSettlement, String CurrencyCodeSettlement, String CurrencyCodeTransaction, String BusinessZoneCode) throws Throwable {
      
     	logger.info("Expected acquirer response  == " + AcquirerResponse_F39);
		logger.info("Expected acquirer response  == " + AmountBilling);
		logger.info("Expected acquirer response  == " + CurrencyCodeBilling);
		logger.info("Expected acquirer response  == " + AmountSettlement);
		logger.info("Expected acquirer response  == " + CurrencyCodeSettlement);
		logger.info("Expected acquirer response  == " + CurrencyCodeTransaction);
		logger.info("Expected acquirer response  == " + BusinessZoneCode);

		isoMsg.set(6, AmountBilling);
		isoMsg.set(51, CurrencyCodeBilling);
		isoMsg.set(5, AmountSettlement);
		isoMsg.set(50, CurrencyCodeSettlement);
		isoMsg.set(49, CurrencyCodeTransaction);
		isoMsg.set(48, BusinessZoneCode);
		responseMap = AcquirerSimulator.receiveResponse(ISO93bpkg, "AcquirerRoute");
		System.out.println("acq receives response at" + Instant.now());
		String response_field39 = responseMap.get(39);
		String AmountBilling6 = responseMap.get(6);
		String CurrencyCodeBilling51 = responseMap.get(51);
		String AmountSettlement5 = responseMap.get(5);
		String CurrencyCodeSettlement50 = responseMap.get(50);
		String CurrencyCodeTransaction49 = responseMap.get(49);
		String BusinessZoneCode48 = responseMap.get(48);

		System.out.println("Actual field 39  " + response_field39 + " expected field 39" + AcquirerResponse_F39) ;
		System.out.println("Actual field_6   " + AmountBilling6 + "expected amt billing" + AmountBilling);
		System.out.println("Actual field_51  " + CurrencyCodeBilling51 + "expected CurrencyCodeBilling" + CurrencyCodeBilling);
		System.out.println("Actual field_5   " + AmountSettlement5 + "expected AmountSettlement" + AmountSettlement);
		System.out.println("Actual field_50  " + CurrencyCodeSettlement50 + "expected CurrencyCodeSettlement" + CurrencyCodeSettlement);
		System.out.println("Actual field_49  " + CurrencyCodeTransaction49 + "expected CurrencyCodeTransaction" + CurrencyCodeTransaction);
		System.out.println("Actual field_48  " + BusinessZoneCode48 + "expected BusinessZoneCode" + BusinessZoneCode);

		logger.info("Actual Acquirer Response for field39 == " + response_field39);


		if (response_field39 != null && AmountBilling6 != null && CurrencyCodeBilling51 != null
				&& AmountSettlement5 != null && CurrencyCodeSettlement50 != null
				&& CurrencyCodeTransaction49 != null && BusinessZoneCode48 != null
				&& response_field39.equals(AcquirerResponse_F39)
				&& AmountBilling6.equals(AmountBilling) && CurrencyCodeBilling51.equals(CurrencyCodeBilling)
				&& AmountSettlement5.equals(AmountSettlement) && CurrencyCodeSettlement50.equals(CurrencyCodeSettlement)
				&& CurrencyCodeTransaction49.equals(CurrencyCodeTransaction)
				&& BusinessZoneCode48.equals(BusinessZoneCode)) {

			logger.info("test passed");
		} else {
			// logger.info("FAILED TEST issuer field " + response);
			Assert.fail();
		}

		System.out.println("Acqinstcode" + isoMsg.getString(32));

		MessageMap.printMap();
	}

  @Then("^Verify acquirer header response \"([^\"]*)\"$")
	public void verify_acquirer_header_response(String arg1) throws Throwable {
		logger.info("Expected response arg 1 == " + arg1);
		responseMap= AcquirerSimulator.receiveResponse(ISO93bpkg,"AcquirerRoute");
		String messageStatus = responseMap.get("MESSAGE_STATUS");
		logger.info("Message status from acquirer is  == " + messageStatus);
		
		if(messageStatus != null && messageStatus.equals(arg1)) {
			logger.info("Test passed");
		}else {
			logger.info("Test failed");
			Assert.fail();
		}
	}
//Header validation steps
  @Given("^Initiate \"([^\"]*)\" transaction for \"([^\"]*)\" CVV as \"([^\"]*)\" with  invalid value \"([^\"]*)\" in \"([^\"]*)\" in Message Header$")
  public void initiate_transaction_for_CVV_as_with_invalid_value_in_in_Message_Header(String trantype, String cardnum, String cvv, String value, String fieldname) throws Throwable {
	  initializeISOMessage(ISO93bpkg);
	  isoMsg.set(2, cardnum);
	  setTranType(trantype);
	  isoMsg.set(45, setTrackData1(cvv));
		isoMsg.set(35, setTrackData2());
	  System.out.println("Initial header of mesage"+Arrays.toString(isoMsg.getHeader()));
	  isoMsg.setHeader(setMessageHeader(fieldname,value));;
  } 
  
  @Given("^Initiate \"([^\"]*)\" transaction for \"([^\"]*)\" with  invalid format \"([^\"]*)\" in \"([^\"]*)\" in Message Header$")
  public void initiate_transaction_for_with_invalid_format_in_in_Message_Header(String trantype, String cardnum, String value, String fieldname) throws Throwable {
      // Write code here that turns the phrase above into concrete actions
	  initializeISOMessage(ISO93bpkg);
	  isoMsg.set(2, cardnum);
	  setTranType(trantype);
	  System.out.println("Initial header of mesage"+Arrays.toString(isoMsg.getHeader()));
	  setInvalidFormatHdr(fieldname,value);
  }

  @When("^Issuer processes the message, sets invalid value \"([^\"]*)\" in field \"([^\"]*)\" and sends back the response$")
  public void issuer_processes_the_message_sets_invalid_value_in_field_and_sends_back_the_response(String value, String fieldname) throws Throwable {
	  receivedmessage=(ISOMsg) is.receiveRequest();
	  System.out.println("issuer receives message"+receivedmessage);
	  receivedmessage.setHeader(setMessageHeader(fieldname,value));;
	  responsemessage=is.processMessage(receivedmessage);
	  msghdr.updateMap("SourceEndpointID", "5");
	  responsemessage.setHeader(msghdr.encodeHeader()); ;
	  System.out.println("header of message processed is"+Arrays.toString(responsemessage.getHeader()));
	  is.sendResponse(responsemessage,"0");
  }

  @When("^Verify issuer gets message with reject header and message status as \"([^\"]*)\"$")
  public void verify_issuer_gets_message_with_reject_header_and_message_status_as(String msgstatus_expected) throws Throwable {
	  receivedmessage=(ISOMsg) is.receiveRequest();
	  String msgstatus_actual=MessageHeader.decodeHeader(receivedmessage.getHeader(), 13, 3);
	  System.out.println("header in response is"+Arrays.toString(receivedmessage.getHeader()));
	  System.out.println("Message status received is"+msgstatus_actual);
	   Assert.assertTrue(msgstatus_actual.equals(msgstatus_expected));
  }
  
  @Then("^Verify acquirer gets message with reject header and message status as \"([^\"]*)\"$")
  public void verify_acquirer_gets_message_with_reject_header_and_message_status_as(String msgstatus_expected) throws Throwable {
  responsemessage=AcquirerSimulator.responsereceived_acq(ISO93bpkg,"AcquirerRoute");
  String msgstatus_actual=MessageHeader.decodeHeader(responsemessage.getHeader(), 13, 3);
  System.out.println("Message status received is"+msgstatus_actual);
  Assert.assertTrue(msgstatus_actual.equals(msgstatus_expected));

  }

}
