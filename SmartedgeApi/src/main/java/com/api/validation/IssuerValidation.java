package com.api.validation;

import java.util.LinkedList;
import java.util.List;

import org.jpos.iso.ISOException;
import org.jpos.iso.ISOMsg;

import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.api.isoMessages.MessageElements;
import com.api.isoMessages.MessageMap;
import com.api.simulator.IssuerSimulator;
import com.api.database.MessageDB;
import com.api.validation.MessageQueue;
import java.net.SocketTimeoutException;

public class IssuerValidation {
	
	public ISOMsg advicereceived;
	public ISOMsg adviceresponse;
	public String RRN;
	public BasicDBObject db = new BasicDBObject();
	public MessageDB msgdb=MessageMap.getInstance().messageDB;
	public MessageQueue mq= MessageQueue.getInstance();
	public  SocketTimeoutException e=new SocketTimeoutException() ;
	
	public void receiveandupdate(int i)  {
			try {
			
			this.advicereceived=IssuerSimulator.receiveAdviceRequest(i);
			System.out.println("advice received is"+advicereceived);
			MessageMap.setValue("advicereceived", advicereceived);
			msgdb.ReceivedAdvice_update();
		  } catch (SocketTimeoutException e) {
			System.out.println("No more messages to receive");
			e.printStackTrace();
		} catch (Exception e1) {
			e1.printStackTrace();
		}

	}
	
	public boolean chkwithmessagereceived(int i) throws ISOException {
		BasicDBObject sentreq=msgdb.returnList(msgdb.collection_curr).get(i-1);
		BasicDBObject elem = (BasicDBObject) sentreq.get("message");
		String RRN = elem.getString("RRN");
		String MTI = elem.getString("MTI");
		boolean RRNChk=RRN.equals(advicereceived.getValue(37));
		if((RRNChk)&&(expectedMTI(advicereceived.getMTI()).equals(MTI)))
			return true;
		else
			return false;
		
	}
	
	public void processAll() throws Throwable {
		adviceresponse=IssuerSimulator.processMessage(MessageMap.getValue("advicereceived"));
		IssuerSimulator.sendResponse(adviceresponse, "0");
		System.out.println("advice response sent by issuer"+adviceresponse);
		
	}
	 public String expectedMTI(String mti) {
		 String expectedvalue=null;
		 if(mti.equals("1220")||mti.equals("1221")) {
			 expectedvalue="1200";
		 }
		 else if(mti.equals("1420"))
				expectedvalue="1420";
		return expectedvalue;
	 }
	 

	 public void validateParallelrecovery(ISOMsg m) throws Throwable {
		 MessageMap.setValue("advicereceived", m);
		 msgdb.ReceivedAdvice_update();
		 String cardnum=m.getString(2);
		 if(mq.txnMap.containsKey(cardnum)) {
			List list= mq.txnMap.get(cardnum);
			 BasicDBObject first=(BasicDBObject) list.get(0);
			 String RRN = first.getString("RRN");
			 if(RRN.equals(m.getValue(37))) {
				 adviceresponse= IssuerSimulator.processMessage(m);
				 IssuerSimulator.sendResponse(adviceresponse, "0");
			 }
			 mq.txnMap.remove(cardnum, first);
		 }
		 else {
			 System.out.println("the cardnumber does not exist");
		 }
	 }
	 
}
