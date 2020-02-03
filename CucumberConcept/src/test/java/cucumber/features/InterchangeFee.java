package cucumber.features;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

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
	//public static SEISOB93Packager ISO93bpkg1 = new SEISOB93Packager("invalid");
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
	//@FCValid_Scenerio_Fees_and_charge_ATM_122_branch2ndline
	
	@Given("^Initiate transaction with \"([^\"]*)\" CardNumber \"([^\"]*)\" TranType \"([^\"]*)\" mcc \"([^\"]*)\" Networkid as \"([^\"]*)\" Amount \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\"$")
	public void initiate_transaction_with_CardNumber_TranType_mcc_Networkid_as_Amount(String transactionclassification,
			String CardNumber, String TranType, String MerchantCategoryCode, String NetworkID, String Amount,
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
			//isoMsg.set(45, setTrackData1());
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
	
	
//@FCValid_Scenerio_Fees_and_charge_POS_122_branch_2ndline
	
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
////@FCValid_Scenerio_Fees_and_charge_POS_122_branch_5thline
	
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

	//@FCDeclined_Scenerio_Amount_POS_122_branch_stip_5thline
	
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
//@FCValid_Scenerio_Fees_and_charge_POS_135_branch
	
@Given("^Initiate Pos Purchase\\+PIN transaction with \"([^\"]*)\" CardNumber \"([^\"]*)\" TranType \"([^\"]*)\" mcc \"([^\"]*)\" Networkid as \"([^\"]*)\" Amount \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\"$")
public void initiate_Pos_Purchase_PIN_transaction_with_CardNumber_TranType_mcc_Networkid_as_Amount(String transactionclassification, String CardNumber, String TranType, String MerchantCategoryCode, String NetworkID, String Amount, String trackdata1, String trackdata2, String PINdata, String Securitydata, String pos1, String pos2, String pos4, String pos5, String pos6, String pos7, String pos8, String pos10, String CardProductId) throws Throwable {

	    logger.info("Starting of Interchange Fee test cases @FCValid_Scenerio_Fees_and_charge_POS_135_branch == ");
		logger.info("TranType == " + TranType + "CardNumber == " + CardNumber + "MerchantCategoryCode == "
				+ MerchantCategoryCode + "Amount == " + Amount+ "CardProductId == " + CardProductId);
		initializeISOMessage(ISO93bpkg);
		isoMsg.set(2, CardNumber);
		isoMsg.set(4, Amount);
		setTranType(TranType);
		// modifyNetworkID(NetworkID);
		// logger.info("NetworkID == " + NetworkID );

		isoMsg.set(26, MerchantCategoryCode);

		String PosDataCode = pos1 + pos2 + "0" + pos4 + pos5 + pos6 + pos7 + pos8 + "0" + pos10 + "00";
		logger.info(PosDataCode);

		if (trackdata1.equals("TrackData1") && trackdata2.equals("TrackData2")) {
			//isoMsg.set(45, setTrackData1());
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
		logger.info("End of @FCValid_Scenerio_Fees_and_charge_POS_135_branch == ");
	}


}

