package com.api.common;

import java.io.BufferedReader;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.time.Duration;
import java.time.Instant;
import java.util.Arrays;
import java.util.UUID;
import org.apache.log4j.Logger;
import org.jpos.iso.ISOException;
import org.jpos.iso.ISOMsg;
import com.api.common.TestProperties;
import com.api.isoMessages.MessageHeader;
import com.api.isoMessages.TLVMessage;
import com.api.simulator.AcquirerSimulator;
import com.api.simulator.IssuerSimulator;
import com.api.common.SEISOB93Packager;

public class GenericActions {
	
	protected AcquirerSimulator msg = null;
	public static ISOMsg isoMsg = null;
	public static  ISOMsg SignInMsg = null;
	public static  ISOMsg SignOffMsg = null;
	public static SEISOB93Packager ISO93bpkg = new SEISOB93Packager();
	//public static SEISOB93Packager ISO93bpkg1 = new SEISOB93Packager("invalid");
    public  MessageHeader msghdr;
    public static MessageHeader SignInMsgHeader = new MessageHeader("3","1","1","0","0","0","1","10","0","0");
	
	public static Logger logger = Logger.getLogger(GenericActions.class.getName());
	public AcquirerSimulator acq= AcquirerSimulator.getInstance();
	
	public void initializeISOMessage(SEISOB93Packager packagename) throws Throwable {
		logger.info("Begin: InitializeISOMessage");
		//msg = new AcquirerSimulator();
		logger.info("Initializing Acquirer Simulator");
		isoMsg = new ISOMsg();
		logger.info("Intial isomsg===");
		msghdr = new MessageHeader("3","1","1","0","11","0","1","10","0","0");
		byte[] tpdu = msghdr.encodeHeader();
		logger.info("EndCodeMsghdr");
		System.out.println("tpdu is"+Arrays.toString(tpdu));
		isoMsg.setPackager(packagename);
		logger.info("setPackager");
		logger.info("ISO Packager ==== " + isoMsg.getPackager());
		isoMsg.setHeader(tpdu);
		// Field No.4 - Amount, transaction
		isoMsg.set(4, "10001");
		// Field 11,SystemsTraceAuditNumber
		isoMsg.set(11, "123456");
		// Field 12, DateAndTimeLocalTransaction
		isoMsg.set(12, "180320010101");
		// Field 14, DateExpiration
		isoMsg.set(14, "2206");
		// Field No.22 - POS Data Code -- MAILORDER priority 350
		isoMsg.set(22, "01030X112345");
		// Field 23, CardSequenceNumber
		isoMsg.set(23, "000");
		// Field No.24 - Function Code
		isoMsg.set(24, "200");
		// Field No.26 - Merchant Category Code
		isoMsg.set(26, "4813");
		// Field No.32 - Acquiring institution id code
		isoMsg.set(32, "900004");
		// Field 37, RetrievalReferenceNumber;12 digit random unique number
		isoMsg.set(37, generateUniqueId());
		// Field 41, CardAcceptorTerminalId
		isoMsg.set(41, "12345678");
		// Field 41, CardAcceptorIdCode
		isoMsg.set(42, "123456781234567");
		// Field No.43 - Card acceptor name/location -
		isoMsg.set(43, "TESTNAME OF MERCHANT123MUMBAIXXXXXXXMHIN");
		// Field 49, CurrencyCodeTransaction
		isoMsg.set(49, "840");
		// Field 63, CurrencyCodeNetwork
//		isoMsg.set(63, "356");
		//isoMsg.set(53, "0");
		isoMsg.setMTI("1200");
		System.out.println("RRN for purchase request message "+isoMsg.getString(37));
		acq.setISOMessage(isoMsg);
	}

	
	public static ISOMsg initializeSignInMessage() throws ISOException {
		SignInMsg= new ISOMsg();
		SignInMsg.setPackager(ISO93bpkg);
		byte[] tpdu = { 3, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0,
				0, 1, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
		SignInMsg.setHeader(tpdu);
		SignInMsg.set(0, "1800");
		SignInMsg.set(24, "801");
		SignInMsg.set(37, generateUniqueId());
		
		return SignInMsg;
		
	}
	
	
	public static ISOMsg initializeSignOffMessage() throws ISOException, IOException {
		SignOffMsg= new ISOMsg();
		SignOffMsg.setPackager(ISO93bpkg);
		byte[] tpdu = SignInMsgHeader.encodeHeader();
		SignOffMsg.setHeader(tpdu);
		SignOffMsg.set(0, "1800");
		SignOffMsg.set(24, "802");
		SignOffMsg.set(37, generateUniqueId());
		return SignOffMsg;
		
	}
	
	public static String generateUniqueId() {
		UUID idOne = UUID.randomUUID();
		String str = "" + idOne;
		int uid = str.hashCode();
		String filterStr = "" + uid;
		str = filterStr.replaceAll("-", "");
		str = String.format("%12s", Integer.parseInt(str)).replace(' ', '9');
		return str;
	}

	/**
	 * {MTI, Function Code, Processing Code}, TranType }
	 * { <<"1200">>, <<"200">>, <<"0">>}, purchase_req }
	 * { <<"1200">>, <<"200">>, <<"1">>}, cash_req }
	 * @param tranType
	 * @throws Throwable
	 */
	public void setTranType(String tranType) throws Throwable {

		if (tranType.equals("Purchase")||tranType.equals("00")) {

			logger.info("Setting Purchase TranType");
			isoMsg.setMTI("1200");
			//isoMsg.set(24, "200");
			isoMsg.set(3, "000000");
		} else if (tranType.equals("Cash")||tranType.equals("01")) {
			isoMsg.setMTI("1200");
			isoMsg.set(24, "200");
			isoMsg.set(3, "010000");
			
		}else if (tranType.equals("Purchase_Invalid")) {
			logger.info("Setting Purchase TranType");
			isoMsg.setMTI("1500");
			isoMsg.set(24, "200");
			isoMsg.set(3, "000000");
		}
		
		else if (tranType.equals("Purchase_ReversalAdvice_Request")) {
			logger.info("Setting Purchase Reversal Advice TranType");
			isoMsg.setMTI("1420");
			isoMsg.set(24, "400");
			isoMsg.set(3, "000000");
		}
		
		else if (tranType.equals("Cash_ReversalAdvice_Request")) {
			logger.info("Setting Cash Reversal Advice TranType");
			isoMsg.setMTI("1420");
			isoMsg.set(24, "400");
			isoMsg.set(3, "010000");
		}
		
		
		else if (tranType.equals("Purchase_Advice_Request")) {
			logger.info("Setting Purchase  Advice TranType");
			isoMsg.setMTI("1220");
			isoMsg.set(24, "200");
			isoMsg.set(3, "000000");
		}
		
		else if (tranType.equals("Purchase_Auth_Request")) {
			logger.info("Setting Purchase Auth Trantype");
			isoMsg.setMTI("1100");
			isoMsg.set(24, "100");
			isoMsg.set(3, "000000");
		}
		else if (tranType.equals("26")) {
			logger.info("Original Credit Request");
			isoMsg.setMTI("1200");
			isoMsg.set(24, "200");
			isoMsg.set(3, "260000");
		}
	}
	
	public void setMerchantCategoryGroup(String merchantCategoryGroup) throws Throwable {

		if (merchantCategoryGroup.equals("X-AIRLINES")) {
			logger.info("Setting merchantCategoryGroup X-AIRLINES");
			isoMsg.set(26, "3000");

		} else if (merchantCategoryGroup.equals("Pre-Authorised Mail/Telephone Order")) {
	       isoMsg.set(26, "4813");
		}else if (merchantCategoryGroup.equals("X-AIRLINES-UNDEFINED")) {
		       isoMsg.set(26, "3333");
		}

	}
	
	public void setTrackData(String is_trackData) throws Throwable {
       
		if (is_trackData.equals("TrackData")) {
			//isoMsg.set(45, setTrackData1());
			isoMsg.set(35, setTrackData2());
			//setTrackData1();
			//setTrackData2();
			//setTrackData3();
		}else {
			isoMsg.unset(45);
			isoMsg.unset(35);
			isoMsg.unset(36);
		}
	}
	
	public String setTrackData1(String cvv) throws Throwable {
		
		logger.info("Setting trackdata1");
		String trackData1StartSentinal = "%";
		String trackData1FormalCode = "B";
		String trackData1PanNumber = "6315881002861896";
		String trackData1Seperator1 = "^";
		String trackData1CardHolderName = "DATES/GLOVES   SQUAT            ";
		String trackData1Seperator2 = "^";
		String trackData1CardExpirationData = "3782";
		String trackData1ServiceCode = "982";
		String trackData1PinVerification = "3001";
		String trackData1DiscretionaryData = "0";
		String trackData1EndSentinal = "?";
		String trackData1LRC = "F";
		String trackData1CardVerificationValue = cvv;
		String trackData1SmartEdgeReserved2 = "00";
		String trackData1SmartEdgeReserved1 = "00";
		String trackData1AuthorizationControlIndicator = "3";
		String TrackData1SmartEdgeReserved3 = "000";
		
		String trackData1 = trackData1StartSentinal + trackData1FormalCode +  trackData1PanNumber +
				            trackData1Seperator1 + trackData1CardHolderName + trackData1Seperator2 +
				            trackData1CardExpirationData + trackData1ServiceCode + trackData1PinVerification +
				            trackData1DiscretionaryData + trackData1EndSentinal + trackData1LRC + trackData1CardVerificationValue + trackData1SmartEdgeReserved2 +
				            trackData1SmartEdgeReserved1 + trackData1AuthorizationControlIndicator + TrackData1SmartEdgeReserved3 ;
		logger.info("Set trackdata1 == "+ trackData1 + trackData1.length());
		//isoMsg.set(45, trackData1);
		return trackData1;
	}
	
	public String setTrackData2() throws Throwable {
		
		logger.info("Setting trackdata2");
		String trackData2StartSentinal = "%";
		String trackData2PanNumber = "6315881002861896";
		String trackData2Seperator1 = "^";
		String trackData2CardExpirationData = "3782";
		String trackData2ServiceCode = "982";
		String trackData2PinVerification = "3001";
		String trackData2DiscretionaryData = "23456789";
		String trackData2EndSentinal = "?";
		String  trackData2LRC = "F";
		
		String trackData2 = trackData2StartSentinal + trackData2PanNumber + trackData2Seperator1 +
				            trackData2CardExpirationData + trackData2ServiceCode + trackData2PinVerification + 
				            trackData2DiscretionaryData  + trackData2EndSentinal + trackData2LRC ;
		logger.info("Set trackdata2 == "+ trackData2);
		//isoMsg.set(35, trackData2);
		return trackData2;
		
	}
	
	public String setTrackData3() throws Throwable {
		logger.info("Setting trackdata3");
		String trackData3 = "TRACG3";
		//isoMsg.set(36,  trackData3);
		logger.info("Set trackdata3 == "+ trackData3);
		return trackData3;
		
	}
	
	public void setServiceRestrictionCode() throws Throwable {
		logger.info("Setting ServiceRestrictionCode");
		String ServiceRestrictionCodePos1 = "2";
		String ServiceRestrictionCodePos2 = "0";
		String ServiceRestrictionCodePos3 = "1";
		
		String ServiceRestrictionCode =ServiceRestrictionCodePos1+ServiceRestrictionCodePos2+ServiceRestrictionCodePos3;
		isoMsg.set(40,  ServiceRestrictionCode);
		
		
	}
   public void setPINData(String is_PINData) throws Throwable {
        
	   if (is_PINData.equals("PINData")){
			//isoMsg.set(52, "00000000");
			   byte[] pindata= {(byte)181,10,(byte)170,(byte)158,15,77,72,(byte)182};
			   isoMsg.set(52,pindata);
		   } 
	   else if (is_PINData.equals("InvalidPINData")){
		   byte[] pindata= {(byte)181,12,(byte)170,(byte)158,15,77,72,(byte)182};
		   isoMsg.set(52,pindata);
	   }
	   else if (is_PINData.equals("NoPINData")){
			   isoMsg.unset(52);
		   }
		}
   
   public void setCaseNumber(String casenumber) throws Throwable {
	   TLVMessage tlvList = new TLVMessage();
	   System.out.println("casenum "+casenumber);
	   tlvList.append(16, casenumber, false);
	   System.out.println("casenumber "+Arrays.toString(tlvList.getMesssage()));
	   isoMsg.set(48, tlvList.getMesssage());
		}

   public void setCVV2Data(String is_CVV2) throws Throwable {
       
	   if (is_CVV2.equals("CVV2_Present")){
		   TLVMessage tlvList = new TLVMessage();
			tlvList.append(3, "938",false);
			isoMsg.set(48, tlvList.getMesssage());
			System.out.println("cvv2 values is"+Arrays.toString(isoMsg.getBytes(48)));
		   }else if (is_CVV2.equals("CVV2_NotPresent")){
			   isoMsg.unset(48);
		   }
		}


   public byte[] setOriginalDataElements(String functioncode,String acqinstid,String rrn, String cardacceptorterminalid,String cardacceptoridcode) throws Throwable {
	   TLVMessage tlvList = new TLVMessage();
	   System.out.println("fn "+functioncode);
	   tlvList.append(1, 2, Integer.parseInt(functioncode));
	   tlvList.append(2, acqinstid, false);
	   tlvList.append(3, rrn);
	   tlvList.append(4, cardacceptorterminalid);
	   tlvList.append(5, cardacceptoridcode);
	   System.out.println("originaldataelemnts "+Arrays.toString(tlvList.getMesssage()));
	   //isoMsg.set(56, tlvList.getMesssage());
	   return tlvList.getMesssage();
		}
   
   public byte[] setAdditionalData2(String NetworkSettlementAmount,String CurrencyCodeNetwork) throws Throwable {
	   TLVMessage tlvList = new TLVMessage();
	   System.out.println("CCN "+CurrencyCodeNetwork);
	   System.out.println("NSA "+NetworkSettlementAmount);
	   tlvList.append(1, NetworkSettlementAmount);
	   tlvList.append(2, CurrencyCodeNetwork);
	   System.out.println("AdditionalData2 "+Arrays.toString(tlvList.getMesssage()));
	   //isoMsg.set(56, tlvList.getMesssage());
	   return tlvList.getMesssage();
		}

   

   
   
      
  public void  setTransactionClassification(String tranclass) throws Throwable {
	  	if(tranclass.equals("Pos Purchase+PIN")||tranclass.equals("Pos Purchase+EMV")||tranclass.equals("Purchase_Advice_Request")||tranclass.equals("ATM with PIN")||tranclass.equals("Pos Purchase+TandE")) {
	  		setTrackData("TrackData");
	  		setPINData("PINData");
	  		isoMsg.set(22, "510101510300");
	  		isoMsg.set(53, "0101010101");
	  		setServiceRestrictionCode();
	  		
	  		}
	  		    		  	
	  	else if (tranclass.equals("ECOM")) {
	  		setCVV2Data("CVV2_Present");
	  		
	  	}
	  	
	  	else if (tranclass.equals("ATM+PIN")) {
	  		setTrackData("TrackData");
	  		setPINData("PINData");
	  		isoMsg.set(53, "0101010101");
	  		isoMsg.set(22, "210501210100");
	  		System.out.println("setting pos data code");
	  		isoMsg.set(26, "6011");
	  		setServiceRestrictionCode();
	  		
	  	}
//	  	else if (tranclass.equals("Pos Purchase+TandE")) {
//	  		setTrackData("TrackData");
//	  		setPINData("PINData");
//	  		isoMsg.set(53, "0101010101");
//	  		isoMsg.set(22, "510201515333");
//	  		System.out.println("setting pos data code");
//	  		isoMsg.set(26, "5542");
//	  		setServiceRestrictionCode();
//	  		
//	  	}
	  	
	  	
	  	else{
	  		
	  		logger.info("Transaction classification does not take track data or pin data");
	  	}
	  	
	 
      }
  
  
   public static byte[] modifySourceEndPoint(String srcep, byte[] hdr) throws IOException {
	   int decimal= Integer.parseInt(srcep,16);
		hdr[12]=(byte) decimal;
	   
	  return hdr;
  }

  
   public byte[] modifyDestEndPoint(String destep) throws IOException {
	  
	   msghdr.headermap.replace("DestinationEndpointID", destep);
	   byte[] tpdu = msghdr.encodeHeader();
	   return tpdu;
     }
   
   
   public void setPOSDataCode(String posDataCodeQualifier) throws Throwable {
       
       if(posDataCodeQualifier.equals("CHIP_PIN_OFFPREMISE")){
    	   logger.info("Set posDataCodeQualifier == "+ posDataCodeQualifier);
    	   isoMsg.set(22, "510301510300");
       }if (posDataCodeQualifier.equals("CHIP_PIN_ONPREMISE")||posDataCodeQualifier.equals("Pos Purchase+PIN")){
    	   logger.info("Set posDataCodeQualifier == "+ posDataCodeQualifier);
    	   isoMsg.set(22, "510101510300");
       }if (posDataCodeQualifier.equals("CHIP_PIN_OFFPREMISE_INVALID")){
    	   logger.info("Set posDataCodeQualifier == "+ posDataCodeQualifier);
    	   isoMsg.set(22, "610101510300");
       }
       if (posDataCodeQualifier.equals("ECOM")){
    	   logger.info("Set posDataCodeQualifier == "+ posDataCodeQualifier);
    	   isoMsg.set(22, "010SS0002345");
    	   TLVMessage tlvList = new TLVMessage();
			//CVD2 value
			tlvList.append(3, "938",false);
			isoMsg.set(48, tlvList.getMesssage());
			isoMsg.unset(40);}

       
       if (posDataCodeQualifier.equals("NFCPUR")){
    	   logger.info("Set posDataCodeQualifier == "+ posDataCodeQualifier);
    	   isoMsg.set(22, "21030X100300");
       }

   }
       
 
   public static void setRecoveryMode(ISOMsg msg,String val) throws Exception {
	   TLVMessage tlvList = new TLVMessage();
	   tlvList.append(9, val,false);
	   msg.set(48, tlvList.getMesssage());
	  
   }
   
    public static long calculateTimeoutInterval(Instant starttime,Instant currtime,String timeout) {
    	Instant finaltime=starttime.plusMillis(Long.parseLong(timeout));
    	long gap= Duration.between(currtime,finaltime).toMillis();
 	    return gap;
    	
    }
    
    public byte[] setMessageHeader(String field, String value) throws IOException {
    	msghdr.modifyHeader(field, value);
    	
    	byte[] tpdu1=msghdr.encodeHeader();
    	return tpdu1;
    	
    	
    }

    public void setInvalidFormatHdr(String field, String value) throws IOException {
    	msghdr.modifyHeader(field, value);
    	byte[] tpdu1=msghdr.encodeHeader(field);
    	isoMsg.setHeader(tpdu1);
    	
    	
    }

	protected String getFileContent(File file) {
		BufferedReader br = null;
		FileReader fr = null;
		StringBuilder sCurrentLine = new StringBuilder();

		try {
			fr = new FileReader(file);
			br = new BufferedReader(fr);
			String line;
			while ((line = br.readLine()) != null) {
				sCurrentLine.append(line.trim());
			}

		} catch (IOException e) {

			e.printStackTrace();

		} finally {

			try {

				if (br != null)
					br.close();

				if (fr != null)
					fr.close();

			} catch (IOException ex) {

				ex.printStackTrace();

			}
			file.delete();
		}
		return sCurrentLine.toString();
	}

	protected String getIssuerResponse() throws Throwable {
		File file = new File(TestProperties.getPropertyValue(TestProperties.TEST_OUTPUT_DIR) + "issuerOutput.txt");
		int counter = 0;
		while (!file.exists() && counter < 10) {
			Thread.sleep(1000);
			counter++;
		}
		// after looping for 9 times if file doesn't exist then throw exception
		if (!file.exists()) {
			throw new Throwable("Issuer did not get any response");
		}
		return getFileContent(file);

	}

	protected String getAcquirerResponse() throws Throwable {
		File file = new File(TestProperties.getPropertyValue(TestProperties.TEST_OUTPUT_DIR) + "acquirerOutput.txt");
		int counter = 0;
		while (!file.exists() && counter < 10) {
			Thread.sleep(1000);
			counter++;
		}
		if (!file.exists()) {
			// throw new Throwable ("Issuer did not get any response");
			return "";
		}
		return getFileContent(file);

	}
	
	
	
	public static int hex2Decimal(String s) {
       String digits = "0123456789ABCDEF";
        s = s.toUpperCase();
        int val = 0;
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            int d = digits.indexOf(c);
            val = 16*val + d;
        }
        return val;
    }
	/*public static void main (String[] args) throws IOException {
		byte[] tpdu = { 3, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0,
				0, 1, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
		String srcendpt = "25";
		int decimal= Integer.parseInt(srcendpt,16);
		tpdu[12]=(byte) decimal;
		System.out.println(Arrays.toString(tpdu));
				}*/
	
}





