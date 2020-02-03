package com.api.connector;

import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.UUID;

import org.jpos.iso.ISOException;
import org.jpos.iso.ISOMsg;
import org.jpos.iso.ISOUtil;

import com.api.common.LoggerUtil;
import com.api.common.SEISOB93Packager;
import com.api.isoMessages.TLVMessage;
import com.api.common.TestProperties;

public class ISOMsgInitializer extends Channel {

	/**
	 * This is to initialize iso message which includes mandatory attributes
	 * which can be overwritten before sending
	 * 
	 * @return
	 * @throws Exception
	 */
	public static ISOMsg getDefaultISOMsg() throws Exception {
		LoggerUtil.info(ISOMsgInitializer.class, "Getting default ISO msg");
		SEISOB93Packager ISO93bpkg = new SEISOB93Packager();

		ISOMsg isoMsg = new ISOMsg();
		isoMsg.setPackager(ISO93bpkg);
		String endpoint = TestProperties
				.getPropertyValue(TestProperties.ACQUIRER_ENDPOINT);
		//byte[] tpdu = createAcquirerHeader();
		byte[] tpdu = createIssuerHeader(endpoint);
		isoMsg.setHeader(tpdu);
		isoMsg.setMTI("1200");
		isoMsg.set(24, "200");
		SimpleDateFormat formatter = new SimpleDateFormat("YYMMddHHmmss");
		Date date = new Date();
		String strDate = formatter.format(date);
		System.out.println("Date = " + strDate);
		isoMsg.set(12, strDate);
		isoMsg.set(37, generateUniqueId());
		// Field 11,SystemsTraceAuditNumber
		isoMsg.set(11, "123456");
		// Field 23, CardSequenceNumber
		isoMsg.set(23, "000");
		// Field No.43 - Card acceptor name/location -
		isoMsg.set(43, "TESTNAME OF MERCHANT123MUMBAIXXXXXXXMHIN");
		// Field 49, CurrencyCodeTransaction
		isoMsg.set(49, "840");
		// Field 49, SecurityRestrictionCode
		isoMsg.set(40, "101");
		
		LoggerUtil.info(ISOMsgInitializer.class, "Default ISO msg" + ISOUtil.hexdump(isoMsg.pack()));

		return isoMsg;
	}

	private static String generateUniqueId() {
		
		LoggerUtil.info(ISOMsgInitializer.class, "Generating RRN Number");
		
		UUID idOne = UUID.randomUUID();
		String str = "" + idOne;
		int uid = str.hashCode();
		String filterStr = "" + uid;
		str = filterStr.replaceAll("-", "");
		str = String.format("%12s", Integer.parseInt(str)).replace(' ', '9');
		return str;
	}

	public static byte[] createAcquirerHeader() {
		LoggerUtil.info(ISOMsgInitializer.class, "Creatng the header");
		byte[] originaltpdu = { 3, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 17, 0, 0,
				0, 0, 0, 1, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
		String sourceid= TestProperties.getPropertyValue(TestProperties.ACQUIRER_ENDPOINT);
		originaltpdu[12]=Byte.valueOf(sourceid);
		//originaltpdu = str2bcd(msgformatid, true, originaltpdu,3);
		//originaltpdu=str2bcd(networkid, true, originaltpdu,6);
		System.out.println("Original header " + Arrays.toString(originaltpdu));
		LoggerUtil.info(ISOMsgInitializer.class, "Original header " + Arrays.toString(originaltpdu));
		return originaltpdu;

	}

        public static byte[] createIssuerHeader(String endpoint) {
                LoggerUtil.info(ISOMsgInitializer.class, "Creatng the header");
                byte[] originaltpdu = { 3, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 17, 0, 0,
                                0, 0, 0, 1, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
                originaltpdu[12] = Byte.valueOf(endpoint);

                System.out.println("Original header " + Arrays.toString(originaltpdu));
                LoggerUtil.info(ISOMsgInitializer.class, "Original header " + Arrays.toString(originaltpdu));
                return originaltpdu;

        }
	
	

	public static void setTrackData1(ISOMsg isoMsg,
			String trackData1CardVerificationValue) throws Exception {

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
		// String trackData1CardVerificationValue = (String) request
		// .get(key);
		String trackData1SmartEdgeReserved2 = "00";
		String trackData1SmartEdgeReserved1 = "00";
		String trackData1AuthorizationControlIndicator = "3";
		String TrackData1SmartEdgeReserved3 = "000";

		String trackData1 = trackData1StartSentinal + trackData1FormalCode
				+ trackData1PanNumber + trackData1Seperator1
				+ trackData1CardHolderName + trackData1Seperator2
				+ trackData1CardExpirationData + trackData1ServiceCode
				+ trackData1PinVerification + trackData1DiscretionaryData
				+ trackData1EndSentinal + trackData1LRC
				+ trackData1CardVerificationValue
				+ trackData1SmartEdgeReserved2 + trackData1SmartEdgeReserved1
				+ trackData1AuthorizationControlIndicator
				+ TrackData1SmartEdgeReserved3;
		LoggerUtil.info(ISOMsgInitializer.class, "Set trackdata1 == "
				+ trackData1 + "---track data length--" + trackData1.length());
		isoMsg.set(45, trackData1);

	}

	public static void setTrackData2(ISOMsg isoMsg) throws Exception {

		LoggerUtil.info(ISOMsgInitializer.class, "Setting trackdata2");
		String trackData2StartSentinal = "%";
		String trackData2PanNumber = "6315881002861896";
		String trackData2Seperator1 = "^";
		String trackData2CardExpirationData = "3782";
		String trackData2ServiceCode = "982";
		String trackData2PinVerification = "3001";
		String trackData2DiscretionaryData = "23456789";
		String trackData2EndSentinal = "?";
		String trackData2LRC = "F";

		String trackData2 = trackData2StartSentinal + trackData2PanNumber
				+ trackData2Seperator1 + trackData2CardExpirationData
				+ trackData2ServiceCode + trackData2PinVerification
				+ trackData2DiscretionaryData + trackData2EndSentinal
				+ trackData2LRC;
		LoggerUtil.info(ISOMsgInitializer.class, "Set trackdata2 == "
				+ trackData2);
		isoMsg.set(35, trackData2);
	}

	   public static void setOriginalDataElements(ISOMsg isoMsg,String functioncode,String acqinstid,String rrn, String cardacceptorterminalid,String cardacceptoridcode) throws Exception {
		   TLVMessage tlvList = new TLVMessage();
		   System.out.println("fn "+functioncode);
		   tlvList.append(1, 2, Integer.parseInt(functioncode));
		   tlvList.append(2, acqinstid, false);
		   tlvList.append(3, rrn);
		   tlvList.append(4, cardacceptorterminalid);
		   tlvList.append(5, cardacceptoridcode);
		   System.out.println("originaldataelemnts "+Arrays.toString(tlvList.getMesssage()));
		   isoMsg.set(56, tlvList.getMesssage());
			}
	   
	   /**
	    * 
	    * @param isoMsg
	    */
       public static String toStringISOMsg(ISOMsg isoMsg) {
    	   StringBuffer buffer = new StringBuffer();
           try {
        	       
                   System.out.printf("MTI = %s%n", isoMsg.getMTI());
                   for (int i = 1; i <= isoMsg.getMaxField(); i++) {
                           if (isoMsg.hasField(i)) {
                                   //System.out.printf("Field (%s) = %s%n", i,
                                                   //isoMsg.getString(i));
                        	   buffer.append("Field (" + i + ")").append(isoMsg.getString(i)).append("\n");
                           }
                   }
                   
           } catch (ISOException e) {
                   e.printStackTrace();
           }
    	   return buffer.toString();
   }


	public static void setAirlineData(ISOMsg isoMsg) throws Exception {
		TLVMessage tlvlist= new TLVMessage();
		tlvlist.append(1, "1");
		tlvlist.append(2, "1");
		tlvlist.append(3, "1");
		tlvlist.append(4, "1");
		tlvlist.append(5, "2");
		tlvlist.append(6, "3");
		tlvlist.append(7, "4");
		tlvlist.append(8, "5");
		tlvlist.append(9, "6");
		tlvlist.append(10, "7");
		tlvlist.append(11, "8");
		tlvlist.append(12, "9");
		System.out.println("casenumber "+Arrays.toString(tlvlist.getMesssage()));
	    isoMsg.set(126, tlvlist.getMesssage());
	}
	
	
}
