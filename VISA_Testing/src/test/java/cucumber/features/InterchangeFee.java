package cucumber.features;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

import java.time.Instant;
import java.util.HashMap;
import java.util.Map;

import org.jpos.iso.ISOMsg;
import org.junit.Assert;

import com.api.common.*;
import com.api.simulator.AcquirerSimulator;
import com.api.common.SEISOB93Packager;
import com.aventstack.extentreports.ExtentReports;
import com.aventstack.extentreports.ExtentTest;
import com.aventstack.extentreports.reporter.ExtentHtmlReporter;
import com.api.simulator.IssuerSimulator;
import com.api.isoMessages.TLVMessage;

public class InterchangeFee extends GenericActions {

	public ISOMsg receivedmessage;
	public ISOMsg responsemessage;
	public ISOMsg reversalmessage;
	public ISOMsg reversalmessage_acq;
	public ISOMsg acqreversalrequest;
	public ISOMsg acqreversalrepeatrequest;
	public ISOMsg repeatreversal_advrequest;
	public ISOMsg reversalresponsemessage;
	public ISOMsg acqreversalresponsemessage;
	public String testcasenumber;
	public String response_field39;
	public String txnid_acqresponse;
	public String delayedresponse_acq;
	public String txnid_acqresponse_delayed;
	public String RRN;
	public static SEISOB93Packager ISO93bpkg = new SEISOB93Packager();
//	public static SEISOB93Packager ISO93bpkg1 = new SEISOB93Packager("invalid");
	public static ExtentHtmlReporter htmlReporter;
	public static ExtentReports extent;
	public static ExtentTest test;
	public static Instant startTransaction;

	private static Map<Integer, String> responseMap = new HashMap<Integer, String>();

	private void modifyNetworkID(String networkID) {
		// TODO Auto-generated method stub

	}
//@FCBasicValid_Scenerio == "
	
	@Given("^Initiate transaction with \"([^\"]*)\" CardNumber \"([^\"]*)\" TranType \"([^\"]*)\" mcc \"([^\"]*)\" Networkid as \"([^\"]*)\"$")
	public void initiate_transaction_with_CardNumber_TranType_mcc_Networkid_as(String transactionclassification,
			String CardNumber, String TranType, String MerchantCategoryCode, String NetworkID) throws Throwable {
		logger.info("Starting of Interchange Fee test cases @FCBasicValid_Scenerio == ");
		logger.info("TranType == " + TranType + "CardNumber == " + CardNumber + "MerchantCategoryCode == "
				+ MerchantCategoryCode);
		initializeISOMessage(ISO93bpkg);
		isoMsg.set(2, CardNumber);
		isoMsg.set(4, "20001");
		logger.info("Amount == " + isoMsg.getValue(4));
		setTranType(TranType);
		modifyNetworkID(NetworkID);
		logger.info("NetworkID == " + NetworkID + "transactionclassification == " + transactionclassification);
		System.out.println("transaction classification is " + transactionclassification);
		setTransactionClassification(transactionclassification);
		isoMsg.set(26, MerchantCategoryCode);
		logger.info("End of @FCBasicValid_Scenerio == ");
	}

	//@FCValid_Scenerio_Fees_and_charge_ATM_Transaction_General2ndline

	@Given("^Initiate transaction with \"([^\"]*)\" CardNumber \"([^\"]*)\" CardNumber \"([^\"]*)\" TranType \"([^\"]*)\" mcc \"([^\"]*)\" Networkid as \"([^\"]*)\" Amount \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\"$")
	public void initiate_transaction_with_CardNumber_cvv_TranType_mcc_Networkid_as_Amount(String transactionclassification,
			String CardNumber, String cvv, String TranType, String MerchantCategoryCode, String NetworkID, String Amount,
			String trackdata1, String trackdata2, String PINdata, String Securitydata, String pos1, String pos2,
			String pos4, String pos5, String pos6, String pos7, String pos8, String pos10) throws Throwable {
		logger.info("Starting of Interchange Fee test cases @FCValid_Scenerio_Amount == ");
		logger.info("TranType == " + TranType + "CardNumber == " + CardNumber + "MerchantCategoryCode == "
				+ MerchantCategoryCode + "Amount == " + Amount);
		initializeISOMessage(ISO93bpkg);
		isoMsg.set(2, CardNumber);
		isoMsg.set(4, Amount);
		setTranType(TranType);
		modifyNetworkID(NetworkID);
		// logger.info("NetworkID == " + NetworkID + "transactionclassification == " +
		
		isoMsg.set(26, MerchantCategoryCode);

		String PosDataCode = pos1 + pos2 + "0" + pos4 + pos5 + pos6 + pos7 + pos8 + "0" + pos10 + "00";
		logger.info(PosDataCode);

		if (trackdata1.equals("TrackData1") && trackdata2.equals("TrackData2")) {
			isoMsg.set(45, setTrackData1(cvv));
			isoMsg.set(35, setTrackData2());

		}
		logger.info("trackdata1 == " + trackdata1 + "trackdata2 == " + trackdata2);
		if (PINdata.equals("PINData")) {
			setPINData(PINdata);
		}
		logger.info("PINdata == " + PINdata);
		if (Securitydata.equals("SecData")) {
			isoMsg.set(53, "0101010101");
		}
		logger.info("Securitydata == " + Securitydata);

		setServiceRestrictionCode();
		isoMsg.set(22, PosDataCode);

		logger.info("PosDataCode == " + PosDataCode);

		System.out.println(isoMsg.getString(52));

		logger.info("my line NetworkID == " + NetworkID + "MCC == " + MerchantCategoryCode);
		logger.info("End of @FCValid_Scenerio_Amount == ");
	}
	
	

//@FCValid_Scenerio_Fees_and_charge_POS_Transaction_General2ndline


	@Given("^Initiate Pos Purchase\\+PIN transaction with \"([^\"]*)\" CardNumber \"([^\"]*)\" TranType \"([^\"]*)\" mcc \"([^\"]*)\" Networkid as \"([^\"]*)\" Amount \"([^\"]*)\"$")
	public void initiate_Pos_Purchase_PIN_transaction_with_CardNumber_TranType_mcc_Networkid_as_Amount(
			String transactionclassification, String CardNumber, String TranType, String MerchantCategoryCode,
			String NetworkID, String Amount) throws Throwable {

		logger.info("Starting of Interchange Fee test cases @FCValid_Scenerio_Amount == ");
		logger.info("TranType == " + TranType + "CardNumber == " + CardNumber + "MerchantCategoryCode == "
				+ MerchantCategoryCode + "Amount == " + Amount);
		initializeISOMessage(ISO93bpkg);
		isoMsg.set(2, CardNumber);
		logger.info("CardNumber == " + CardNumber);
		isoMsg.set(4, Amount);
		logger.info("Amount == " + Amount);
		setTranType(TranType);
		logger.info("TranType == " + TranType);
		modifyNetworkID(NetworkID);
		logger.info("NetworkID == " + NetworkID + "transactionclassification == " + transactionclassification);
		System.out.println("transaction classification is " + transactionclassification);
		setTransactionClassification(transactionclassification);
		isoMsg.set(26, MerchantCategoryCode);
		logger.info("my line NetworkID == " + NetworkID + "MCC == " + MerchantCategoryCode);
		logger.info("End of @FCValid_Scenerio_Amount == ");
	}

////@FCValid_Scenerio_Fees_and_charge_POS_Transaction_General_5thline

	
	@Then("^Verify if this acquirer's \"([^\"]*)\" received \"([^\"]*)\" \"([^\"]*)\" and \"([^\"]*)\"$")
	public void verify_if_this_acquirer_s_received_and(String testcaseid, String expectedAcqResponse,
			String expectedfeeRuleID, String expectedfeeAmount) throws Throwable {

		logger.info(
				"Started :: " + testcaseid + "Interchange fee calculation on valid transaction with different Amount");
		logger.info("expectedAcqResponse=" + expectedAcqResponse + " expectedfeeRuleID=" + expectedfeeRuleID
				+ " expectedfeeAmount=" + expectedfeeAmount);

		responseMap = AcquirerSimulator.receiveResponse(ISO93bpkg, "AcquirerRoute");
		String actualAcqResponse = responseMap.get(39);
		logger.info("Actual Acquirer Response for field39 == " + actualAcqResponse);
		
       String actualField123Response = responseMap.get(123);
	   logger.info("Actual Acquirer Response for field123== " + actualField123Response);

		if (actualAcqResponse != null && !actualAcqResponse.equals("")
				&& actualAcqResponse.equals(expectedAcqResponse)) {

			logger.info("Actual and expected acquirer response is correct");
			if (actualField123Response != null && !actualField123Response.equals("")) {

				String actualProgramCode = actualField123Response.substring(0, 15);
				logger.info("Actual ProgramCode== " + actualProgramCode);
				String[] feesProgramCode = actualProgramCode.split("-");
				String feeGroupType = feesProgramCode[0];
				String feeCode = feesProgramCode[1];
				String actualfeeRuleID = feesProgramCode[2];
				logger.info("actualfeeRuleID== " + actualfeeRuleID);
				String amount = actualField123Response.substring(16, 34);
				logger.info("Amount== " + amount);
				String actualfeeAmount = amount.replaceFirst("^0+(?!$)", "");
				logger.info("Actual Fee Amount== " + actualfeeAmount);

				if (actualfeeRuleID.equals(expectedfeeRuleID) && actualfeeAmount.equals(expectedfeeAmount)) {
					logger.info("TEST PASSED: " + testcaseid + " Interchange fee calculation is correct");
				} else {
					logger.error("TEST FAILED: " + testcaseid
							+ " actualfeeRuleID or actualfeeAmount does not match with the expectedfeeRuleID or expectedfeeAmount");
					Assert.fail();
				}

			} else {
				logger.error("TEST FAILED: " + testcaseid + " actualField123Response is null or empty");
				Assert.fail();
			}

		} else {
			logger.error("TEST FAILED: " + testcaseid + " Did not receive correct Acquirer response");
			Assert.fail();
		}
		
		}

	


	//@FCDeclined_Scenerio_Amount_POS_Transaction_General_5thline

	
	@Then("^Verify if this acquirer's \"([^\"]*)\" received  \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" and \"([^\"]*)\"$")
	public void verify_if_this_acquirer_s_received_and(String testcaseid, String expectedAcqResponse,
			String expectedAdditionalResponse, String expectedfeeRuleID, String expectedfeeAmount) throws Throwable {

		// @Then("^Verify if this acquirer's \"([^\"]*)\" received \"([^\"]*)\"
		// \"([^\"]*)\" \"([^\"]*)\" and \"([^\"]*)\"$")
		// public void verify_if_this_acquirer_s_received_and(String testcaseid, String
		// expectedAcqResponse,
		// String expectedAdditionalResponse, String expectedfeeRuleID, String
		// expectedfeeAmount) throws Throwable {
		logger.info(
				"Started :: Interchange fee calculation on valid transaction with different lesser Amount that has set");
		logger.info("Expected AcqResponse_39 == " + expectedAcqResponse);
		logger.info("Expected AdditionalResponse_46 == " + expectedAdditionalResponse);
		logger.info("Expected feeRuleID_123 == " + expectedfeeRuleID);
		logger.info("Expected feeAmount_123 == " + expectedfeeAmount);

		responseMap = AcquirerSimulator.receiveResponse(ISO93bpkg, "AcquirerRoute");

		String actualAcqResponse_39 = responseMap.get(39);
		logger.info("Actual Acquirer Response for field39 == " + actualAcqResponse_39);

		String actualAdditionalResponse_46 = responseMap.get(46);
		logger.info("Actual Acquirer Response for field123== " + actualAdditionalResponse_46);

		String actualFieldResponse_123 = responseMap.get(123);
		logger.info("Actual Acquirer Response for field123== " + actualFieldResponse_123);
		logger.info("txn id of response received by acquirer" + responseMap.get(48));

		if (actualAcqResponse_39 != null && !actualAcqResponse_39.equals("")
				&& actualAcqResponse_39.equals(expectedAcqResponse)) {

			logger.info("Actual and expected acquirer response_39 is correct");

			if (actualAdditionalResponse_46 != null && !actualAdditionalResponse_46.equals("")
					&& actualAdditionalResponse_46.equals(expectedAdditionalResponse)) {

				logger.info("Actual and expectedAdditionalResponse-46 is correct");

				if (actualFieldResponse_123 != null && !actualFieldResponse_123.equals("")) {

					String actualfeeRuleID = actualFieldResponse_123.substring(11, 15);
					logger.info("Actual Fee RuleID== " + actualfeeRuleID);

					String amount = actualFieldResponse_123.substring(16, 34);
					logger.info("Amount== " + amount);

					String actualfeeAmount = amount.replaceFirst("^0+(?!$)", "");
					logger.info("Actual Fee Amount== " + actualfeeAmount);

					if (actualfeeRuleID.equals(expectedfeeRuleID) && actualfeeAmount.equals(expectedfeeAmount)) {
						logger.info("TEST PASSED:: " + testcaseid + " Interchange fee calculation is correct");
					} else {
						logger.error("TEST FAILED: " + testcaseid
								+ " actualfeeRuleID or actualfeeAmount does not match with the expectedfeeRuleID or expectedfeeAmount");
						Assert.fail();
					}

				} else {
					logger.error("TEST FAILED: " + testcaseid + " actualFieldResponse_123 is null or empty");
					Assert.fail();
				}

			} else {
				logger.error("TEST FAILED: " + testcaseid + " actualAdditionalResponse_46 is null or empty");
				Assert.fail();
			}

		} else {
			logger.error("TEST FAILED: " + testcaseid + " Did not receive correct Acquirer response");
			Assert.fail();
		}

	}

	
	
//@FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase 	
//	@Given("^Initiate Purchase transaction with PosDataCode as \"([^\"]*)\" CardNumber \"([^\"]*)\" cvv \"([^\"]*)\" TranType \"([^\"]*)\" mcc \"([^\"]*)\" Networkid as \"([^\"]*)\" Amount \"([^\"]*)\" trackDataOne \"([^\"]*)\" trackDataTwo \"([^\"]*)\" PINdata \"([^\"]*)\" Securitydata \"([^\"]*)\"$")
//	public void initiate_Purchase_transaction_with_PosDataCode_as_CardNumber_cvv_TranType_mcc_Networkid_as_Amount_trackDataOne_trackDataTwo_PINdata_Securitydata(String PosDataCode, String CardNumber, String cvv, String TranType, String MerchantCategoryCode, String NetworkID, String Amount, String trackDataOne, String trackDataTwo, String PINdata, String Securitydata) throws Throwable {

		@Given("^Initiate Purchase transaction with PosDataCode as \"([^\"]*)\" CardNumber \"([^\"]*)\" cvv \"([^\"]*)\" TranType \"([^\"]*)\" mcc \"([^\"]*)\" Networkid as \"([^\"]*)\" Amount \"([^\"]*)\" trackDataOne \"([^\"]*)\" trackDataTwo \"([^\"]*)\" PINdata \"([^\"]*)\" Securitydata \"([^\"]*)\" CurrencyCodeTransaction \"([^\"]*)\"$")
		public void initiate_Purchase_transaction_with_PosDataCode_as_CardNumber_cvv_TranType_mcc_Networkid_as_Amount_trackDataOne_trackDataTwo_PINdata_Securitydata_CurrencyCodeTransaction(String PosDataCode, String CardNumber, String cvv, String TranType, String MerchantCategoryCode, String NetworkID, String Amount, String trackDataOne, String trackDataTwo, String PINdata, String Securitydata, String CurrencyCodeTransaction) throws Throwable {
		  

		 logger.info("Starting of Interchange Fee test cases @FCValid_Scenerio_Amount == ");
			logger.info("TranType == " + TranType + "CardNumber == " + CardNumber + "MerchantCategoryCode == "
					+ MerchantCategoryCode + "Amount == " + Amount);
			initializeISOMessage(ISO93bpkg);
			isoMsg.set(2, CardNumber);
			isoMsg.set(4, Amount);
			isoMsg.set(49, CurrencyCodeTransaction);
			isoMsg.set(22, PosDataCode);
			logger.info("PosDataCode == " + PosDataCode);
			setTranType(TranType);
			isoMsg.set(26, MerchantCategoryCode);

			if (trackDataOne.equals("TrackData1") && trackDataTwo.equals("TrackData2")) {
				isoMsg.set(45, setTrackData1(cvv));
				isoMsg.set(35, setTrackData2());
			}
			logger.info("trackDataOne == " + trackDataOne + "trackDataTwo == " + trackDataTwo);
			if (PINdata.equals("PINData")) {
				setPINData(PINdata);
			}
			logger.info("PINdata == " +isoMsg.getString(52));
			
			if (Securitydata.equals("SecData")) {
				isoMsg.set(53, "0101010101");
			}
			logger.info("Securitydata == " + Securitydata);

			setServiceRestrictionCode();
			

	System.out.println(isoMsg.getString(52));

			logger.info("my line NetworkID == " + NetworkID + "MCC == " + MerchantCategoryCode+ "PosDataCode == " + PosDataCode);
			logger.info("End of @FCValid_Scenerio_Fees_and_charge_POS_135_branch == ");
	}

//@FCValid_Scenerio_Fees_and_charge_POS_Transaction_AFD
//	@Given("^Initiate AFD transaction with MerchantCategoryCode \"([^\"]*)\" CardNumber \"([^\"]*)\" cvv \"([^\"]*)\"TranType \"([^\"]*)\" PosDataCode \"([^\"]*)\" Networkid as \"([^\"]*)\" Amount \"([^\"]*)\" trackDataOne \"([^\"]*)\" trackDataTwo \"([^\"]*)\" PINdata \"([^\"]*)\" Securitydata \"([^\"]*)\"$")
//	public void initiate_AFD_transaction_with_MerchantCategoryCode_CardNumber_cvv_TranType_PosDataCode_Networkid_as_Amount_trackDataOne_trackDataTwo_PINdata_Securitydata(String MerchantCategoryCode, String CardNumber, String cvv, String TranType, String PosDataCode, String Networkid, String Amount, String trackDataOne, String trackDataTwo, String PINdata, String Securitydata) throws Throwable {
	   
		@Given("^Initiate AFD transaction with MerchantCategoryCode \"([^\"]*)\" CardNumber \"([^\"]*)\" cvv \"([^\"]*)\"TranType \"([^\"]*)\" PosDataCode \"([^\"]*)\" Networkid as \"([^\"]*)\" Amount \"([^\"]*)\" trackDataOne \"([^\"]*)\" trackDataTwo \"([^\"]*)\" PINdata \"([^\"]*)\" Securitydata \"([^\"]*)\" CurrencyCodeTransaction \"([^\"]*)\"$")
		public void initiate_AFD_transaction_with_MerchantCategoryCode_CardNumber_cvv_TranType_PosDataCode_Networkid_as_Amount_trackDataOne_trackDataTwo_PINdata_Securitydata_CurrencyCodeTransaction(String MerchantCategoryCode, String CardNumber, String cvv, String TranType, String PosDataCode, String Networkid, String Amount, String trackDataOne, String trackDataTwo, String PINdata, String Securitydata, String CurrencyCodeTransaction) throws Throwable {
		    
	    logger.info("Starting of Interchange Fee test cases @FCValid_Scenerio_Amount == ");
		logger.info("TranType == " + TranType + "CardNumber == " + CardNumber + "MerchantCategoryCode == "
				+ MerchantCategoryCode + "Amount == " + Amount);
		initializeISOMessage(ISO93bpkg);
		isoMsg.set(2, CardNumber);
		isoMsg.set(4, Amount);
		isoMsg.set(49, CurrencyCodeTransaction);
		isoMsg.set(22, PosDataCode);
		logger.info("PosDataCode == " + PosDataCode);
		setTranType(TranType);
		isoMsg.set(26, MerchantCategoryCode);

		if (trackDataOne.equals("TrackData1") && trackDataTwo.equals("TrackData2")) {
			isoMsg.set(45, setTrackData1(cvv));
			isoMsg.set(35, setTrackData2());
		}
		logger.info("trackDataOne == " + trackDataOne + "trackDataTwo == " + trackDataTwo);
		if (PINdata.equals("PINData")) {
			setPINData(PINdata);
		}
		logger.info("PINdata == " + PINdata);
		if (Securitydata.equals("SecData")) {
			isoMsg.set(53, "0101010101");
		}
		logger.info("Securitydata == " + Securitydata);

		setServiceRestrictionCode();
		

System.out.println(isoMsg.getString(52));

		logger.info("my line NetworkID == " + Networkid + "MCC == " + MerchantCategoryCode+ "PosDataCode == " + PosDataCode);
		logger.info("End of @FCValid_Scenerio_Fees_and_charge_POS_135_branch == ");
	}
	

 //@FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_keyentry
//	@Given("^Initiate Purchase Keyentry transaction with PosDataCode as \"([^\"]*)\" CardNumber \"([^\"]*)\" cvv \"([^\"]*)\" TranType \"([^\"]*)\" mcc \"([^\"]*)\" Networkid as \"([^\"]*)\" Amount \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\"$")
//	public void initiate_Purchase_Keyentry_transaction_with_PosDataCode_as_CardNumber_cvv_TranType_mcc_Networkid_as_Amount(String PosDataCode, String CardNumber, String cvv, String TranType, String MerchantCategoryCode, String NetworkID, String Amount, String trackdata1, String trackdata2, String PINdata, String Securitydata) throws Throwable {
//	 
		
		@Given("^Initiate Purchase Keyentry transaction with PosDataCode as \"([^\"]*)\" CardNumber \"([^\"]*)\" cvv \"([^\"]*)\" TranType \"([^\"]*)\" mcc \"([^\"]*)\" Networkid as \"([^\"]*)\" Amount \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" CurrencyCodeTransaction \"([^\"]*)\"$")
		public void initiate_Purchase_Keyentry_transaction_with_PosDataCode_as_CardNumber_cvv_TranType_mcc_Networkid_as_Amount_CurrencyCodeTransaction(String PosDataCode, String CardNumber, String cvv, String TranType, String MerchantCategoryCode, String NetworkID, String Amount, String trackdata1, String trackdata2, String PINdata, String Securitydata, String CurrencyCodeTransaction) throws Throwable {
		    
	   logger.info("Starting of Interchange Fee test cases @FCValid_Scenerio_Amount == ");
		logger.info("TranType == " + TranType + "CardNumber == " + CardNumber + "MerchantCategoryCode == "
				+ MerchantCategoryCode + "Amount == " + Amount);
		initializeISOMessage(ISO93bpkg);
		isoMsg.set(2, CardNumber);
		isoMsg.set(4, Amount);
		isoMsg.set(49,CurrencyCodeTransaction);
		isoMsg.set(22, PosDataCode);
		logger.info("PosDataCode == " + PosDataCode);
		setTranType(TranType);
		isoMsg.set(26, MerchantCategoryCode);

		if (trackdata1.equals("TrackData1") && trackdata2.equals("TrackData2")) {
			isoMsg.set(45, setTrackData1(cvv));
			isoMsg.set(35, setTrackData2());
		}
		logger.info("trackdata1 == " + trackdata1 + "trackdata2 == " + trackdata2);
		if (PINdata.equals("PINData")) {
			setPINData(PINdata);
		}
		logger.info("PINdata == " + PINdata);
		if (Securitydata.equals("SecData")) {
			isoMsg.set(53, "0101010101");
		}
		logger.info("Securitydata == " + Securitydata);

		setServiceRestrictionCode();
		

System.out.println(isoMsg.getString(52));

		logger.info("my line NetworkID == " + NetworkID + "MCC == " + MerchantCategoryCode+ "PosDataCode == " + PosDataCode);
		logger.info("End of @FCValid_Scenerio_Fees_and_charge_POS_135_branch == ");
	}
   
//@FCValid_Scenerio_Fees_and_charge_POS_Transaction_TandE
//   @Given("^Initiate TandE transaction with PosDataCode as \"([^\"]*)\" CardNumber \"([^\"]*)\" cvv \"([^\"]*)\" TranType \"([^\"]*)\" mcc \"([^\"]*)\" Networkid as \"([^\"]*)\" Amount \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\"$")
//   public void initiate_TandE_transaction_with_PosDataCode_as_CardNumber_cvv_TranType_mcc_Networkid_as_Amount(String PosDataCode, String CardNumber, String cvv, String TranType, String MerchantCategoryCode, String NetworkID, String Amount, String trackdata1, String trackdata2, String PINdata, String Securitydata) throws Throwable {
	   
	   @Given("^Initiate TandE transaction with PosDataCode as \"([^\"]*)\" CardNumber \"([^\"]*)\" cvv \"([^\"]*)\" TranType \"([^\"]*)\" mcc \"([^\"]*)\" Networkid as \"([^\"]*)\" Amount \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" CurrencyCodeTransaction \"([^\"]*)\"$")
	   public void initiate_TandE_transaction_with_PosDataCode_as_CardNumber_cvv_TranType_mcc_Networkid_as_Amount_CurrencyCodeTransaction(String PosDataCode, String CardNumber, String cvv, String TranType, String MerchantCategoryCode, String NetworkID, String Amount, String trackdata1, String trackdata2, String PINdata, String Securitydata, String CurrencyCodeTransaction) throws Throwable {
	     
     logger.info("Starting of Interchange Fee test cases @FCValid_Scenerio_Amount == ");
		logger.info("TranType == " + TranType + "CardNumber == " + CardNumber + "MerchantCategoryCode == "
				+ MerchantCategoryCode + "Amount == " + Amount);
		initializeISOMessage(ISO93bpkg);
		isoMsg.set(2, CardNumber);
		isoMsg.set(4, Amount);
		isoMsg.set(49, CurrencyCodeTransaction);
		isoMsg.set(22, PosDataCode);
		logger.info("PosDataCode == " + PosDataCode);
		setTranType(TranType);
		isoMsg.set(26, MerchantCategoryCode);



		if (trackdata1.equals("TrackData1") && trackdata2.equals("TrackData2")) {
			isoMsg.set(45, setTrackData1(cvv));
			isoMsg.set(35, setTrackData2());
		}
		logger.info("trackdata1 == " + trackdata1 + "trackdata2 == " + trackdata2);
		if (PINdata.equals("PINData")) {
			setPINData(PINdata);
		}
		logger.info("PINdata == " + PINdata);
		if (Securitydata.equals("SecData")) {
			isoMsg.set(53, "0101010101");
		}
		logger.info("Securitydata == " + Securitydata);

		setServiceRestrictionCode();
		

        System.out.println(isoMsg.getString(52));

		logger.info("my line NetworkID == " + NetworkID + "MCC == " + MerchantCategoryCode+ "PosDataCode == " + PosDataCode);
		logger.info("End of @FCValid_Scenerio_Fees_and_charge_POS_135_branch == ");
	}
   
//   @Given("^Initiate Purchase Recurring transaction with PosDataCode as \"([^\"]*)\" CardNumber \"([^\"]*)\" cvv \"([^\"]*)\" TranType \"([^\"]*)\" mcc \"([^\"]*)\" Networkid as \"([^\"]*)\" Amount \"([^\"]*)\" trackDataOne \"([^\"]*)\" trackDataTwo \"([^\"]*)\" PINdata \"([^\"]*)\" Securitydata \"([^\"]*)\"$")
//   public void initiate_Purchase_Recurring_transaction_with_PosDataCode_as_CardNumber_cvv_TranType_mcc_Networkid_as_Amount_trackDataOne_trackDataTwo_PINdata_Securitydata(String PosDataCode, String CardNumber, String cvv, String TranType, String MerchantCategoryCode, String NetworkID, String Amount, String trackDataOne, String trackDataTwo, String PINdata, String Securitydata) throws Throwable {
     
	   @Given("^Initiate Purchase Recurring transaction with PosDataCode as \"([^\"]*)\" CardNumber \"([^\"]*)\" cvv \"([^\"]*)\" TranType \"([^\"]*)\" mcc \"([^\"]*)\" Networkid as \"([^\"]*)\" Amount \"([^\"]*)\" trackDataOne \"([^\"]*)\" trackDataTwo \"([^\"]*)\" PINdata \"([^\"]*)\" Securitydata \"([^\"]*)\" CurrencyCodeTransaction \"([^\"]*)\"$")
	   public void initiate_Purchase_Recurring_transaction_with_PosDataCode_as_CardNumber_cvv_TranType_mcc_Networkid_as_Amount_trackDataOne_trackDataTwo_PINdata_Securitydata_CurrencyCodeTransaction(String PosDataCode, String CardNumber, String cvv, String TranType, String MerchantCategoryCode, String NetworkID, String Amount, String trackDataOne, String trackDataTwo, String PINdata, String Securitydata, String CurrencyCodeTransaction) throws Throwable {
	      logger.info("Starting of Interchange Fee test cases @FCValid_Scenerio_Amount == ");
				logger.info("TranType == " + TranType + "CardNumber == " + CardNumber + "MerchantCategoryCode == "
						+ MerchantCategoryCode + "Amount == " + Amount);
				initializeISOMessage(ISO93bpkg);
				isoMsg.set(2, CardNumber);
				isoMsg.set(4, Amount);
				isoMsg.set(49, CurrencyCodeTransaction);
				isoMsg.set(22, PosDataCode);
				logger.info("PosDataCode == " + PosDataCode);
				setTranType(TranType);
				isoMsg.set(26, MerchantCategoryCode);

				if (trackDataOne.equals("TrackData1") && trackDataTwo.equals("TrackData2")) {
					isoMsg.set(45, setTrackData1(cvv));
					isoMsg.set(35, setTrackData2());
				}
				logger.info("trackDataOne == " + trackDataOne + "trackDataTwo == " + trackDataTwo);
				if (PINdata.equals("PINData")) {
					setPINData(PINdata);
				}
				logger.info("PINdata == " +isoMsg.getString(52));
				
				if (Securitydata.equals("SecData")) {
					isoMsg.set(53, "0101010101");
				}
				logger.info("Securitydata == " + Securitydata);

				setServiceRestrictionCode();
				

		System.out.println(isoMsg.getString(52));

				logger.info("my line NetworkID == " + NetworkID + "MCC == " + MerchantCategoryCode+ "PosDataCode == " + PosDataCode);
				logger.info("End of @FCValid_Scenerio_Fees_and_charge_POS_135_branch == ");
		}

   
   
//   FCValid_Scenerio_Fees_and_charge_POS_Transaction_purchase_ECOM

//@Given("^Initiate ECOM transaction \"([^\"]*)\" CardNumber \"([^\"]*)\" cvv \"([^\"]*)\" TranType \"([^\"]*)\" mcc \"([^\"]*)\" Networkid as \"([^\"]*)\" Amount \"([^\"]*)\" trackDataOne \"([^\"]*)\" trackDataTwo \"([^\"]*)\" PINdata \"([^\"]*)\" Securitydata \"([^\"]*)\" CVV as \"([^\"]*)\"$")
//public void initiate_ECOM_transaction_CardNumber_cvv_TranType_mcc_Networkid_as_Amount_trackDataOne_trackDataTwo_PINdata_Securitydata_cvv_as(String transactionclassification, String CardNumber, String cvv, String TranType, String MerchantCategoryCode, String NetworkID, String Amount, String trackDataOne, String trackDataTwo, String PINdata, String Securitydata, String CVV) throws Throwable {
   
	@Given("^Initiate ECOM transaction \"([^\"]*)\" CardNumber \"([^\"]*)\" cvv \"([^\"]*)\" TranType \"([^\"]*)\" mcc \"([^\"]*)\" Networkid as \"([^\"]*)\" Amount \"([^\"]*)\" trackDataOne \"([^\"]*)\" trackDataTwo \"([^\"]*)\" PINdata \"([^\"]*)\" Securitydata \"([^\"]*)\" CVV as \"([^\"]*)\" CurrencyCodeTransaction \"([^\"]*)\"$")
	public void initiate_ECOM_transaction_CardNumber_cvv_TranType_mcc_Networkid_as_Amount_trackDataOne_trackDataTwo_PINdata_Securitydata_CVV_as_CurrencyCodeTransaction(String transactionclassification, String CardNumber, String cvv, String TranType, String MerchantCategoryCode, String NetworkID, String Amount, String trackDataOne, String trackDataTwo, String PINdata, String Securitydata, String CVV, String CurrencyCodeTransaction) throws Throwable {
	  
		logger.info("Starting of Interchange Fee test cases @FCValid_Scenerio_Amount == ");
		logger.info("TranType == " + TranType + "CardNumber == " + CardNumber + "MerchantCategoryCode == "
				+ MerchantCategoryCode + "Amount == " + Amount);
		initializeISOMessage(ISO93bpkg);
		isoMsg.set(2, CardNumber);
		isoMsg.set(4, Amount);
		isoMsg.set(49, CurrencyCodeTransaction);

//	isoMsg.set(22, PosDataCode);
//	logger.info("PosDataCode == " + PosDataCode);
		setTranType(TranType);
		setTransactionClassification(transactionclassification);

	
		setCVV2Data(CVV);
		 setPOSDataCode(transactionclassification);
		isoMsg.set(26, MerchantCategoryCode);
//		setCVV2Data(CVV);

		if (trackDataOne.equals("TrackData1") && trackDataTwo.equals("TrackData2")) {
			isoMsg.set(45, setTrackData1(cvv));
			isoMsg.set(35, setTrackData2());
		}
		logger.info("trackDataOne == " + trackDataOne + "trackDataTwo == " + trackDataTwo);
		if (PINdata.equals("PINData")) {
			setPINData(PINdata);
		}
		logger.info("PINdata == " + isoMsg.getString(52));

		if (Securitydata.equals("SecData")) {
			isoMsg.set(53, "0101010101");
		}
		logger.info("Securitydata == " + Securitydata);

		setServiceRestrictionCode();
		

		System.out.println(isoMsg.getString(52));

		logger.info("my line NetworkID == " + NetworkID + "MCC == " + MerchantCategoryCode );
		logger.info("End of @FCValid_Scenerio_Fees_and_charge_POS_135_branch == ");
	}

// @Given("^Initiate cash transaction with PosDataCode as \"([^\"]*)\" CardNumber \"([^\"]*)\" cvv \"([^\"]*)\" TranType \"([^\"]*)\" mcc \"([^\"]*)\" Networkid as \"([^\"]*)\" Amount \"([^\"]*)\" trackDataOne \"([^\"]*)\" trackDataTwo \"([^\"]*)\" PINdata \"([^\"]*)\" Securitydata \"([^\"]*)\"$")
// public void initiate_cash_transaction_with_PosDataCode_as_CardNumber_cvv_TranType_mcc_Networkid_as_Amount_trackDataOne_trackDataTwo_PINdata_Securitydata(String PosDataCode, String CardNumber, String cvv, String TranType, String MerchantCategoryCode, String Networkid, String Amount, String trackDataOne, String trackDataTwo, String PINdata, String Securitydata) throws Throwable {
   
	 @Given("^Initiate cash transaction with PosDataCode as \"([^\"]*)\" CardNumber \"([^\"]*)\" cvv \"([^\"]*)\" TranType \"([^\"]*)\" mcc \"([^\"]*)\" Networkid as \"([^\"]*)\" Amount \"([^\"]*)\" trackDataOne \"([^\"]*)\" trackDataTwo \"([^\"]*)\" PINdata \"([^\"]*)\" Securitydata \"([^\"]*)\" CurrencyCodeTransaction \"([^\"]*)\"$")
	 public void initiate_cash_transaction_with_PosDataCode_as_CardNumber_cvv_TranType_mcc_Networkid_as_Amount_trackDataOne_trackDataTwo_PINdata_Securitydata_CurrencyCodeTransaction(String PosDataCode, String CardNumber, String cvv, String TranType, String MerchantCategoryCode, String Networkid, String Amount, String trackDataOne, String trackDataTwo, String PINdata, String Securitydata, String CurrencyCodeTransaction) throws Throwable {
		 
	   logger.info("Starting of Interchange Fee test cases @FCValid_Scenerio_Amount == ");
		logger.info("TranType == " + TranType + "CardNumber == " + CardNumber + "MerchantCategoryCode == "
				+ MerchantCategoryCode + "Amount == " + Amount);
		initializeISOMessage(ISO93bpkg);
		isoMsg.set(2, CardNumber);
		isoMsg.set(4, Amount);
		isoMsg.set(49, CurrencyCodeTransaction);
		isoMsg.set(22, PosDataCode);
		logger.info("PosDataCode == " + PosDataCode);
		setTranType(TranType);
		isoMsg.set(26, MerchantCategoryCode);

		if (trackDataOne.equals("TrackData1") && trackDataTwo.equals("TrackData2")) {
			isoMsg.set(45, setTrackData1(cvv));
			isoMsg.set(35, setTrackData2());
		}
		logger.info("trackDataOne == " + trackDataOne + "trackDataTwo == " + trackDataTwo);
		if (PINdata.equals("PINData")) {
			setPINData(PINdata);
		}
		logger.info("PINdata == " +isoMsg.getString(52));
		
		if (Securitydata.equals("SecData")) {
			isoMsg.set(53, "0101010101");
		}
		logger.info("Securitydata == " + Securitydata);

		setServiceRestrictionCode();
		
 }
 
 
 
// @Given("^Initiate transaction with PosDataCode as \"([^\"]*)\" CardNumber \"([^\"]*)\" TranType \"([^\"]*)\" transactionclassification \"([^\"]*)\" mcc \"([^\"]*)\" Networkid as \"([^\"]*)\" Amount \"([^\"]*)\" trackDataOne \"([^\"]*)\" trackDataTwo \"([^\"]*)\" PINdata \"([^\"]*)\" Securitydata \"([^\"]*)\"  CVV as \"([^\"]*)\"$")
// public void initiate_transaction_with_PosDataCode_as_CardNumber_TranType_transactionclassification_mcc_Networkid_as_Amount_trackDataOne_trackDataTwo_PINdata_Securitydata_CVV_as(String PosDataCode, String CardNumber, String TranType, String transactionclassification, String MerchantCategoryCode, String NetworkID, String Amount, String trackDataOne, String trackDataTwo, String PINdata, String Securitydata, String CVV) throws Throwable {
//    
//
//        logger.info("Starting of Interchange Fee test cases @FCValid_Scenerio_Amount == ");
//		logger.info("TranType == " + TranType + "CardNumber == " + CardNumber + "MerchantCategoryCode == "
//				+ MerchantCategoryCode + "Amount == " + Amount);
//		initializeISOMessage(ISO93bpkg);
//		isoMsg.set(2, CardNumber);
//		isoMsg.set(4, Amount);
//	//isoMsg.set(22, PosDataCode);
//	//logger.info("PosDataCode == " + PosDataCode);
//		setTranType(TranType);
//    setTransactionClassification(transactionclassification);
//		setCVV2Data(CVV);
//		setPOSDataCode(transactionclassification);
//		isoMsg.set(26, MerchantCategoryCode);
//		setCVV2Data(CVV);
//
//		if (trackDataOne.equals("TrackData1") && trackDataTwo.equals("TrackData2")) {
//		isoMsg.set(45, setTrackData1());
//			isoMsg.set(35, setTrackData2());
//		}
//		logger.info("trackDataOne == " + trackDataOne + "trackDataTwo == " + trackDataTwo);
//		if (PINdata.equals("PINData")) {
//			setPINData(PINdata);
//		}
//		logger.info("PINdata == " + isoMsg.getString(52));
//
//		if (Securitydata.equals("SecData")) {
//			isoMsg.set(53, "0101010101");
//		}
//   	 logger.info("Securitydata == " + Securitydata);
//
//		setServiceRestrictionCode();
//		
//
//		System.out.println(isoMsg.getString(52));
//
//		logger.info("my line NetworkID == " + NetworkID + "MCC == " + MerchantCategoryCode );
//		logger.info("End of @FCValid_Scenerio_Fees_and_charge_POS_135_branch == ");
//	}
//

	


 

 
// @Given("^Initiate ECOM transaction \"([^\"]*)\" CardNumber \"([^\"]*)\" TranType \"([^\"]*)\" PosDataCode <PosDataCode> mcc \"([^\"]*)\" Networkid as \"([^\"]*)\" Amount \"([^\"]*)\" trackDataOne \"([^\"]*)\" trackDataTwo \"([^\"]*)\" PINdata \"([^\"]*)\" Securitydata \"([^\"]*)\" CVV as \"([^\"]*)\"$")
// public void initiate_ECOM_transaction_CardNumber_TranType_PosDataCode_PosDataCode_mcc_Networkid_as_Amount_trackDataOne_trackDataTwo_PINdata_Securitydata_CVV_as(String transactionclassification, String CardNumber, String TranType, String PosDataCode, String MerchantCategoryCode, String NetworkID, String Amount, String trackDataOne, String trackDataTwo, String PINdata, String Securitydata) throws Throwable {
//	 public void initiate_ECOM_transaction_CardNumber_TranType_mcc_Networkid_as_Amount_trackDataOne_trackDataTwo_PINdata_Securitydata_CVV_as(String transactionclassification, String CardNumber, String TranType, String MerchantCategoryCode, String NetworkID, String Amount, String trackDataOne, String trackDataTwo, String PINdata, String Securitydata, String CVV) throws Throwable {
//	     


// logger.info("Starting of Interchange Fee test cases @FCValid_Scenerio_Amount == ");
//	logger.info("TranType == " + TranType + "CardNumber == " + CardNumber + "MerchantCategoryCode == "
//			+ MerchantCategoryCode + "Amount == " + Amount);
//	initializeISOMessage(ISO93bpkg);
//	isoMsg.set(2, CardNumber);
//	isoMsg.set(4, Amount);
////isoMsg.set(22, PosDataCode);
////logger.info("PosDataCode == " + PosDataCode);
//	setTranType(TranType);
//	setTransactionClassification(transactionclassification);
//	setCVV2Data(CVV);
//	 setPOSDataCode(transactionclassification);
//	isoMsg.set(26, MerchantCategoryCode);
////	setCVV2Data(CVV);
//
//	if (trackDataOne.equals("TrackData1") && trackDataTwo.equals("TrackData2")) {
//		isoMsg.set(45, setTrackData1());
//		isoMsg.set(35, setTrackData2());
//	}
//	logger.info("trackDataOne == " + trackDataOne + "trackDataTwo == " + trackDataTwo);
//	if (PINdata.equals("PINData")) {
//		setPINData(PINdata);
//	}
//	logger.info("PINdata == " + isoMsg.getString(52));
//
//	if (Securitydata.equals("SecData")) {
//		isoMsg.set(53, "0101010101");
//	}
//	logger.info("Securitydata == " + Securitydata);
//
//	setServiceRestrictionCode();
//	
//
//	System.out.println(isoMsg.getString(52));
//
//	logger.info("my line NetworkID == " + NetworkID + "MCC == " + MerchantCategoryCode );
//	logger.info("End of @FCValid_Scenerio_Fees_and_charge_POS_135_branch == ");
//}


 

//	@Then("^Verify acquirer's \"([^\"]*)\" received response \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" and \"([^\"]*)\"$")
//   public void verify_acquirer_s_received_response_and(String testcaseid, String expectedAcqResponse, String expectedAdditionalResponse, String expectedbusinesszonecode, String expectedfeeRuleID, String expectedfeeAmount) throws Throwable {
//      
//
//       logger.info("Started :: " + testcaseid + "Interchange fee calculation on valid transaction with different Amount");
//		logger.info("expectedAcqResponse=" + expectedAcqResponse + " expectedAdditionalResponse=" + expectedAdditionalResponse+ " expectedBusinessZoneCode=" + expectedbusinesszonecode+ " expectedfeeRuleID=" + expectedfeeRuleID
//				+ " expectedfeeAmount=" + expectedfeeAmount);
//
//		responseMap = AcquirerSimulator.receiveResponse(ISO93bpkg, "AcquirerRoute");
//		String actualAcqResponse = responseMap.get(39);
//		logger.info("Actual Acquirer Response for field39 == " + actualAcqResponse);
//		String actualField48AdditionalData = responseMap.get(48);
//		logger.info("Actual Acquirer AdditionalData for field48== " + actualField48AdditionalData);
//		String actualAdditionalResponse_46 = responseMap.get(46);
//		logger.info("Actual Acquirer Response for field123== " + actualAdditionalResponse_46);
//
//		
//       if (actualField48AdditionalData != null && !actualField48AdditionalData.equals("")) {
//
//			String ActualBsinssZnCd = actualField48AdditionalData;
//			logger.info("Actual BsinssZnCd== " + ActualBsinssZnCd);
//			
//			if (ActualBsinssZnCd.equals(expectedbusinesszonecode)) {
//				logger.info("TEST PASSED: " + testcaseid + "BusinessZoneCode is correct");
//				
//
//		          String actualField123Response = responseMap.get(123);
//		        logger.info("Actual Acquirer Response for field123== " + actualField123Response);
//
//		if (actualAcqResponse != null && !actualAcqResponse.equals("")
//				&& actualAcqResponse.equals(expectedAcqResponse)) {
//
//			logger.info("Actual and expected acquirer response is correct");
//			if (actualField123Response != null && !actualField123Response.equals("")) {
//
//				String actualProgramCode = actualField123Response.substring(0, 15);
//				logger.info("Actual ProgramCode== " + actualProgramCode);
//				String[] feesProgramCode = actualProgramCode.split("-");
//				String feeGroupType = feesProgramCode[0];
//				String feeCode = feesProgramCode[1];
//				String actualfeeRuleID = feesProgramCode[2];
//				logger.info("actualfeeRuleID== " + actualfeeRuleID);
//				String amount = actualField123Response.substring(16, 34);
//				logger.info("Amount== " + amount);
//				String actualfeeAmount = amount.replaceFirst("^0+(?!$)", "");
//				logger.info("Actual Fee Amount== " + actualfeeAmount);
//
//				if (actualfeeRuleID.equals(expectedfeeRuleID) && actualfeeAmount.equals(expectedfeeAmount)) {
//					logger.info("TEST PASSED: " + testcaseid + " Interchange fee calculation is correct");
//					
//					if (actualAdditionalResponse_46 != null && !actualAdditionalResponse_46.equals("")
//							&& actualAdditionalResponse_46.equals(expectedAdditionalResponse)) {
//
//		                   logger.info("Actual and expectedAdditionalResponse-46 is correct");
//		                   else {
//		   					logger.error("TEST FAILED: " + testcaseid + " actualAdditionalResponse_46 is null or empty");
//		   				Assert.fail();
//				} else {
//					logger.error("TEST FAILED: " + testcaseid
//							+ " actualfeeRuleID or actualfeeAmount does not match with the expectedfeeRuleID or expectedfeeAmount");
//					Assert.fail();
//				}
//
//			} else {
//				logger.error("TEST FAILED: " + testcaseid + " actualField123Response is null or empty");
//				Assert.fail();
//			}
//
//		} else {
//			logger.error("TEST FAILED: " + testcaseid + " Did not receive correct Acquirer response");
//			Assert.fail();
//		}
//		
//				} else {
//					logger.error("TEST FAILED: " + testcaseid
//							+ " ActualBsinssZnCd  does not match with the expectedfeeRuleID or expectedBusinessZoneCode");
//					Assert.fail();
//				}
//			  }else {
//				logger.error("TEST FAILED: " + testcaseid + " actualField48AdditionalData is null or empty");
//				Assert.fail();
//			}
//
//		}
//			
//       }
//
//   
	  
   
	@Then("^Verify the BusinessZoneCode \"([^\"]*)\" received by issuer$")
	public void verify_the_BusinessZoneCode_received_by_issuer(String expectedbusinesszonecode) throws Throwable {
		receivedmessage=(ISOMsg) IssuerSimulator.receiveRequest();
		  System.out.println("issuer receives message"+receivedmessage);
          String txnid = TLVMessage.getValue(receivedmessage.getBytes(48),"01");
		  String BZCode = TLVMessage.getValue(receivedmessage.getBytes(48),"12");
          System.out.println("txn id received by issuer is "+txnid);
		  System.out.println("BusinessZoneCode received by issuer is"+BZCode);
		  Assert.assertTrue(BZCode.equals(expectedbusinesszonecode)); 
	}

	
	@And("^Message is processed by issuer and repsonse is sent back to the acquirer successfully$")
	public void message_is_processed_by_issuer_and_repsonse_is_sent_back_to_the_acquirer_successfully() throws Throwable {
		receivedmessage=(ISOMsg) IssuerSimulator.receiveRequest();
		
		  System.out.println("issuer receives message"+receivedmessage);
		  String txnid = TLVMessage.getValue(receivedmessage.getBytes(48),"01");
		  System.out.println("transaction id of message received "+ txnid);
		  String BZCode = TLVMessage.getValue(receivedmessage.getBytes(48),"12");
		  System.out.println("transaction id of message received "+ BZCode);
		  //Thread.sleep(1000);	
		  responsemessage=IssuerSimulator.processMessage(receivedmessage);
		  IssuerSimulator.sendResponse(responsemessage,"0");
		  System.out.println("Send processed response"+responsemessage);
		  
	}

//General 5 line for all	
	
	@Then("^Verify this acquirer's \"([^\"]*)\" received \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" and \"([^\"]*)\"$")
	public void verify_this_acquirer_s_received_and(String testcaseid, String expectedAcqResponse, String expectedbusinesszonecode, String expectedfeeRuleID, String expectedfeeAmount) throws Throwable {
		

			logger.info("Started :: " + testcaseid + "Interchange fee calculation on valid transaction with different Amount");
			logger.info("expectedAcqResponse=" + expectedAcqResponse +  " expectedBusinessZoneCode=" + expectedbusinesszonecode+ " expectedfeeRuleID=" + expectedfeeRuleID
					+ " expectedfeeAmount=" + expectedfeeAmount);

			responseMap = AcquirerSimulator.receiveResponse(ISO93bpkg, "AcquirerRoute");
			String actualAcqResponse = responseMap.get(39);
			logger.info("Actual Acquirer Response for field39 == " + actualAcqResponse);
			String actualField48AdditionalData = responseMap.get(48);
			logger.info("Actual Acquirer AdditionalData for field48== " + actualField48AdditionalData);
			
            if (actualField48AdditionalData != null && !actualField48AdditionalData.equals("")) {

				String ActualBsinssZnCd = actualField48AdditionalData;
				logger.info("Actual BsinssZnCd== " + ActualBsinssZnCd);
		if (ActualBsinssZnCd.equals(expectedbusinesszonecode)) {
					logger.info("TEST PASSED: " + testcaseid + "BusinessZoneCode is correct");
					

			          String actualField123Response = responseMap.get(123);
			        logger.info("Actual Acquirer Response for field123== " + actualField123Response);

			if (actualAcqResponse != null && !actualAcqResponse.equals("")
					&& actualAcqResponse.equals(expectedAcqResponse)) {

				logger.info("Actual and expected acquirer response is correct");
				if (actualField123Response != null && !actualField123Response.equals("")) {

					String actualProgramCode = actualField123Response.substring(0, 15);
					logger.info("Actual ProgramCode== " + actualProgramCode);
					String[] feesProgramCode = actualProgramCode.split("-");
					String feeGroupType = feesProgramCode[0];
					String feeCode = feesProgramCode[1];
					String actualfeeRuleID = feesProgramCode[2];
					logger.info("actualfeeRuleID== " + actualfeeRuleID);
					String amount = actualField123Response.substring(16, 34);
					logger.info("Amount== " + amount);
					String actualfeeAmount = amount.replaceFirst("^0+(?!$)", "");
					logger.info("Actual Fee Amount== " + actualfeeAmount);

					if (actualfeeRuleID.equals(expectedfeeRuleID) && actualfeeAmount.equals(expectedfeeAmount)) {
						logger.info("TEST PASSED: " + testcaseid + " Interchange fee calculation is correct");
					} else {
						logger.error("TEST FAILED: " + testcaseid
								+ " actualfeeRuleID or actualfeeAmount does not match with the expectedfeeRuleID or expectedfeeAmount");
						Assert.fail();
					}

				} else {
					logger.error("TEST FAILED: " + testcaseid + " actualField123Response is null or empty");
					Assert.fail();
				}

			} else {
				logger.error("TEST FAILED: " + testcaseid + " Did not receive correct Acquirer response");
				Assert.fail();
			}
			
					} else {
						logger.error("TEST FAILED: " + testcaseid
								+ " ActualBsinssZnCd  does not match with the expectedfeeRuleID or expectedBusinessZoneCode");
						Assert.fail();
					}
	
				} else {
					logger.error("TEST FAILED: " + testcaseid + " actualField48AdditionalData is null or empty");
					Assert.fail();
				}

			}
	}

	
	
	