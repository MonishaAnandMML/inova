package com.api.connector;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintStream;
import java.net.Socket;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.Arrays;
import java.util.HashMap;
//import cucumber.features.CommonStepDefinition;
import org.jpos.iso.*;
import org.jpos.iso.channel.NCCChannel;
import org.jpos.q2.Q2;
import org.jpos.util.LogSource;
import org.jpos.util.Logger;
import org.jpos.util.SimpleLogListener;
import org.jpos.util.SimpleLogSource;

import com.api.common.TestProperties;
import com.api.common.GenericActions;
import com.api.common.ReceiveMessage;
import com.api.common.SSLConfiguration;
import com.api.common.SendMessage;
import com.api.common.TLVMessage;

public class AcquirerSimulator implements ISORequestListener {

	MUX mux;
	public static final String MESSAGE_STATUS = "MessageStatus";
	public static ISOMsg SignInmessage;
	public static ISOMsg SignOffmessage;
	public static  NCCChannel acquirer_clientChannel1= new NCCChannel();
	public static  NCCChannel acquirer_clientChannel2= new NCCChannel();
	public static  NCCChannel Acquirer1_fwdroute_clientChannel3= new NCCChannel();
	public static  NCCChannel channel = new NCCChannel();
	public static  NCCChannel acqchannel= new NCCChannel();
	public static  NCCChannel[] Acqchannel = new NCCChannel[3];
	private static Thread t = null;
	private static Thread thread = null;
	private static ISOMsg isoMessage;
	private static ISOMsg responsereceived;
	private static Map<Integer, String> resultMap = new HashMap<Integer, String>();;
	private static Map<String, String> headerMap = new HashMap<String, String>();;
	private static SimpleLogSource logSource = null;

	public AcquirerSimulator() {
		super();
	}

	/**
	 * This returns the value of field id from result Map. After returning this
	 * value remove the key. This method is used by feature files to verify the
	 * result. This will wait for 10 seconds if data is null before returning
	 * any data.
	 * 
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public static String getData(int id) throws Exception {
		int counter = 0;
		String value = "";
		logSource.info("Getting data for field " + id);
		while ((resultMap == null || resultMap.get(id) == null) && counter < 10) {
			Thread.sleep(1000);
			counter++;
		}
		if (resultMap != null) {
			value = resultMap.get(id);
			resultMap.remove(id);
		}

		logSource.info("REturnig data for field " + id + " = " + value);
		return value;
	}
	
	public static void resetMaps() {
		headerMap.clear();
		resultMap.clear();
	}
	/**
	 * Based on header key; verify will call this method to get the data
	 * @param key
	 * @return
	 * @throws Exception
	 */
	public static String getHeader(String key) throws Exception {
		int counter = 0;
		String value = "";
		logSource.info("Getting data for field " + key);
		while ((headerMap == null || headerMap.get(key) == null) && counter < 10) {
			Thread.sleep(1000);
			counter++;
		}
		if (headerMap != null) {
			value = headerMap.get(key);
			headerMap.remove(key);
		}

		logSource.info("REturnig data for field " + key + " = " + value);
		return value;
	}
	
	
	
	public static void setISOMessage(ISOMsg message) throws Exception{
		isoMessage = message;
		
	}

	/**
	 * This method is to stop the server
	 * 
	 * @throws Exception
	 */
	public static void stopServer() throws Exception {
		if (thread != null && thread.isAlive()) {
			thread.interrupt();
			thread = null;
		}
	}

	/**
	 * This is to start the acquirer simulator.
	 * 
	 * @throws Exception
	 */
	
	
	public static NCCChannel[] startAcquirerConnection() throws Throwable {
		SignInmessage= GenericActions.initializeSignInMessage();
	        File file = new File(TestProperties.getPropertyValue(TestProperties.LOG_DIR)
							+ "acquirer.log");
		    Logger logger = new Logger();
			logger.addListener(new SimpleLogListener(new PrintStream(file)));
			logSource = new SimpleLogSource(logger, "generic");
		//acquirer1
		if(!acquirer_clientChannel1.isConnected()) {
	          System.out.println("Need to start AcquirerChannel1 "+Acqchannel[0]);
		     logSource.info("Starting acquirer simulator1");
		     acquirer_clientChannel1 = SSLConfiguration.newClientChannel();
		     acquirer_clientChannel1.setHost(TestProperties.getPropertyValue(TestProperties.Acquirer1_IP), 9001);
		     acquirer_clientChannel1.connect();
		     Acqchannel[0]=acquirer_clientChannel1;
		     byte[] tpdu = GenericActions.modifySourceEndPoint((TestProperties.getPropertyValue(TestProperties.Acquirer1_endpoint)),SignInmessage.getHeader());
		     SignInmessage.setHeader(tpdu);
			 System.out.println("Header modified with changed source endpoint "+Arrays.toString(SignInmessage.getHeader()));
		     SendMessage sendSignIn  = new SendMessage(acquirer_clientChannel1,SignInmessage);
		     sendSignIn.sendMessageViaChannel();
		     ReceiveMessage receiveSignInresponse= new ReceiveMessage(acquirer_clientChannel1);
			 ISOMsg	SignInresponsereceived=receiveSignInresponse.call();
			System.out.println("signin response received is "+SignInresponsereceived);
		
		
		     
		}
	
	if(!acquirer_clientChannel2.isConnected()) {
	          System.out.println("Need to start AcquirerChannel2 "+Acqchannel[1]);
		    logSource.info("Starting acquirer simulator1");
		    acquirer_clientChannel2 = SSLConfiguration.newClientChannel();
		    acquirer_clientChannel2.setHost(TestProperties.getPropertyValue(TestProperties.Acquirer2_IP), 9001);
		    acquirer_clientChannel2.connect();
		    Acqchannel[1]=acquirer_clientChannel2;
		    SendMessage sendSignIn  = new SendMessage(acquirer_clientChannel2,SignInmessage);
		    byte[] tpdu = GenericActions.modifySourceEndPoint((TestProperties.getPropertyValue(TestProperties.Acquirer2_endpoint)),SignInmessage.getHeader());
		    SignInmessage.setHeader(tpdu);
			 System.out.println("Header modified with changed source endpoint "+Arrays.toString(SignInmessage.getHeader()));
		    sendSignIn.sendMessageViaChannel();
		    ReceiveMessage receiveSignInresponse= new ReceiveMessage(acquirer_clientChannel2);
			ISOMsg	SignInresponsereceived=receiveSignInresponse.call();
			System.out.println("signin response received is "+SignInresponsereceived);
			
		
		} 
	if(!Acquirer1_fwdroute_clientChannel3.isConnected()) {
        System.out.println("Need to start AcquirerChannel3 "+Acqchannel[2]);
	    logSource.info("Starting acquirer simulator1");
	    Acquirer1_fwdroute_clientChannel3 = SSLConfiguration.newClientChannel();
	    Acquirer1_fwdroute_clientChannel3.setHost(TestProperties.getPropertyValue(TestProperties.Acquirer1_fwdroute_IP), 9001);
	    System.out.println("conecting to "+Acquirer1_fwdroute_clientChannel3.getHost());
	    Acquirer1_fwdroute_clientChannel3.connect();
	    
	    Acqchannel[2]=Acquirer1_fwdroute_clientChannel3;
	    SendMessage sendSignIn  = new SendMessage(Acquirer1_fwdroute_clientChannel3,SignInmessage);
	    byte[] tpdu = GenericActions.modifySourceEndPoint((TestProperties.getPropertyValue(TestProperties.Acquirer1_fwdroute_endpoint)),SignInmessage.getHeader());
	    SignInmessage.setHeader(tpdu);
		System.out.println("Header modified with changed source endpoint "+Arrays.toString(SignInmessage.getHeader()));
	    sendSignIn.sendMessageViaChannel();
	    ReceiveMessage receiveSignInresponse= new ReceiveMessage(Acquirer1_fwdroute_clientChannel3);
		ISOMsg	SignInresponsereceived=receiveSignInresponse.call();
		System.out.println("signin response received is "+SignInresponsereceived);
		
	
	}
	
	
        return Acqchannel;
	
	}
	

	public static NCCChannel chooseAcquirer(String routetype) {
		
		String acqinstid=isoMessage.getString(32);
		String Fwdinstid=isoMessage.getString(33);
		String acqId1Code_config=TestProperties.getPropertyValue(TestProperties.Acquirer1_IDCode);
		String acqId2Code_config=TestProperties.getPropertyValue(TestProperties.Acquirer2_IDCode);
		String FwdId1Code_config=TestProperties.getPropertyValue(TestProperties.Acquirer1_fwdroute_IDCode);
		try {
		if (routetype.equals("AcquirerRoute")) {		
		if (acqinstid.equals(acqId1Code_config)) {
		    channel= Acqchannel[0];
		}
		
		else if (acqinstid.equals(acqId2Code_config)) {
		 	 channel= Acqchannel[1];
		}
		}
		
		if (routetype.equals("ForwardRoute")) {
	
		if (Fwdinstid.equals(FwdId1Code_config)) {
			 System.out.println("channel3 ");
			 channel= Acqchannel[2];
			}
		
		}
		}
		catch(Exception e){
         
			
		}
	
		
		return channel;
		
		

	}
		
	public static  void sendMessage(String routetype) throws Throwable {
		acqchannel=chooseAcquirer(routetype);
		System.out.println("Acquirer channel chosen is "+acqchannel.getHost());
		//String acqIP=acqchannel.getHost();
		String acqIP="192.168.15.7";
		if(acqIP.equals(TestProperties.getPropertyValue(TestProperties.Acquirer1_IP))) {
			byte[] tpdu = GenericActions.modifySourceEndPoint((TestProperties.getPropertyValue(TestProperties.Acquirer1_endpoint)),isoMessage.getHeader());
			isoMessage.setHeader(tpdu);
			System.out.println("Header of message sent by acquirer is "+Arrays.toString(tpdu));
		}
		else if(acqIP.equals(TestProperties.getPropertyValue(TestProperties.Acquirer2_IP))) {
			byte[] tpdu = GenericActions.modifySourceEndPoint((TestProperties.getPropertyValue(TestProperties.Acquirer2_endpoint)),isoMessage.getHeader());
			isoMessage.setHeader(tpdu);
			System.out.println("Header of message sent is "+Arrays.toString(tpdu));
		}
		else if(acqIP.equals(TestProperties.getPropertyValue(TestProperties.Acquirer1_fwdroute_IP))) {
			byte[] tpdu = GenericActions.modifySourceEndPoint((TestProperties.getPropertyValue(TestProperties.Acquirer1_fwdroute_endpoint)),isoMessage.getHeader());
			isoMessage.setHeader(tpdu);
			System.out.println("Header of message sent is "+Arrays.toString(tpdu));
		}
		else {
			System.out.println("unable to resolve");
		}
		SendMessage send  = new SendMessage(acqchannel,isoMessage);
		send.sendMessageViaChannel();
    
	}

	
	public static  void sendMessage_using_ep(String value, String routetype ) throws Throwable {
		acqchannel=chooseAcquirer(routetype);
		System.out.println("Acquirer channel chosen is "+acqchannel.getHost());
		String acqIP=acqchannel.getHost();
			byte[] tpdu = GenericActions.modifySourceEndPoint(value,isoMessage.getHeader());
			isoMessage.setHeader(tpdu);
			System.out.println("header in message sent is"+Arrays.toString(isoMessage.getHeader()));
		   SendMessage send  = new SendMessage(acqchannel,isoMessage);
		   send.sendMessageViaChannel();
    
	}

	
	
		private static String getString(byte[] bytes) {
		String messageStatusString = "";
		for(Byte bt : bytes) {
			messageStatusString = messageStatusString + bt;
		}
		return messageStatusString;
	}
	
	public static ISOMsg responsereceived_acq(SEISOB93Packager packagename,String routetype) throws Exception {
		acqchannel=chooseAcquirer(routetype);
		System.out.println("Acquirer channel chosen is "+acqchannel.getHost());
		if(acqchannel.isConnected()) {
		ReceiveMessage receiveresponse= new ReceiveMessage(acqchannel);
		responsereceived=receiveresponse.call();
		
		}
		return responsereceived;
	}

	public static  Map receiveResponse(SEISOB93Packager packagename,String routetype) throws Exception {
		String response_field39 = null;
		String response_field46 = null;
		acqchannel=chooseAcquirer(routetype);
		System.out.println("Acquirer channel chosen is "+acqchannel.getHost());
		if(acqchannel.isConnected()) {
		ReceiveMessage receiveresponse= new ReceiveMessage(acqchannel);
		responsereceived=receiveresponse.call();
		/*while(!(isoMessage.getValue(37)).equals(responsereceived.getValue(37))) {
			System.out.println("RRNs are not same");
			responsereceived=receiveresponse.call();
		}*/
		}
		logSource.info("ResponseMTI"+responsereceived.getMTI());

	      		logSource.info("Acquirer Simulator processing message");
			try {
				if (responsereceived.getValue(39) != null) {
					logSource.info("Response in AcquirerSimulator for Field 39 =="
							+ responsereceived.getValue(39).toString());
					System.out.println("Response in field39"+responsereceived.getValue(39) );

				resultMap.put(39, responsereceived.getValue(39).toString());
				response_field39= resultMap.get(39);
				System.out.println(response_field39);
				}

				if (responsereceived.getValue(46) != null) {
					logSource.info("Response in AcquirerSimulator for Field 46=="
							+ responsereceived.getValue(46).toString());

					resultMap.put(46, responsereceived.getValue(46).toString());
					response_field46= resultMap.get(46);
					System.out.println(response_field46);
				}
				
				resultMap.put(48, TLVMessage.getValue(responsereceived.getBytes(48),"01").toString());
				logSource.info("TransactionID Field 48=="
						+ responsereceived.getValue(48).toString());
		        System.out.println("Transaction id in messages received by acquirer "+resultMap.get(48));
		        
               resultMap.put(48, TLVMessage.getValue(responsereceived.getBytes(48),"12").toString());
               System.out.println("BusinessZoneCodein messages received by acquirer "+resultMap.get(48));
				
				
				if (responsereceived.getBytes(123) != null) {
				
					logSource.info("Response in field 123"+responsereceived.getValue(123).toString());
					resultMap.put(123, responsereceived.getValue(123).toString());
					resultMap.put(123, TLVMessage.getValue(responsereceived.getBytes(123),"01").toString());
					System.out.println("Transaction id in messages received by acquirer "+resultMap.get(123));
				}
				


				//Get messagestatus bytes from header; convert to string and include in headerMap to verify
				byte[] messageStatus = java.util.Arrays.copyOfRange(responsereceived.getHeader(),13, 16);
				String messageStatusString = getString(messageStatus);
				
				//headerMap.put(MESSAGE_STATUS, messageStatusString);
				headerMap.put(MESSAGE_STATUS, messageStatusString);

				

				logSource.info("HEADER == " + messageStatusString);
				logSource.info("HEADER == " + java.util.Arrays
						.toString(responsereceived.getHeader()));

			} catch (Exception e) {
				e.printStackTrace();
				logSource.error("Error in Acquirer Simulator processing message "
						+ e.getMessage());
			}
	    
			System.out.println("Response_RRN " +responsereceived.getString(37));
		return resultMap;	
			
		}

	public static void closeConnection() throws Throwable {
		/*SignOffmessage= GenericActions.initializeSignOffMessage();
		SendMessage sendSignOff  = new SendMessage(acquirer_clientChannel,SignOffmessage);
		sendSignOff.sendMessageViaChannel();
	    ReceiveMessage receiveSignOffresponse= new ReceiveMessage(acquirer_clientChannel);
		ISOMsg	SignOffresponsereceived=receiveSignOffresponse.call();
		System.out.println("Acquirer signing off");
		Thread.sleep(2000);*/
		acquirer_clientChannel1.disconnect();
		acquirer_clientChannel2.disconnect();
		Acquirer1_fwdroute_clientChannel3.disconnect();
		Thread.sleep(2000);
		//System.out.println("Acquirer disconnected");
	
}

	

	public boolean process(ISOSource source, ISOMsg m) {
		// TODO Auto-generated method stub
		return false;
	}

	
	
}