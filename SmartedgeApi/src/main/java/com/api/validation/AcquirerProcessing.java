package com.api.validation;

import com.api.common.GenericActions;
import com.api.isoMessages.MessageMap;

public class AcquirerProcessing extends GenericActions{
	
	public void createTxn(String cardnumber,String cvv,String TranClass) throws Throwable {
		initializeISOMessage(ISO93bpkg);
		 isoMsg.set(2, cardnumber);
		 isoMsg.set(4, "5000");
		 isoMsg.set(26, "5231");
		 setTranType("00");
		 isoMsg.set(45, setTrackData1(cvv));
		 isoMsg.set(35, setTrackData2());
		 setPINData("PINData");
		 isoMsg.set(53, "0101010101");
		 setServiceRestrictionCode();
		 setCVV2Data("CVV2_NotPresent");
		 isoMsg.set(22, "510101510300");
		 System.out.println("pos data code"+isoMsg.getString(22));

		 MessageMap.setValue("requestmessage", isoMsg);	


	}


}
