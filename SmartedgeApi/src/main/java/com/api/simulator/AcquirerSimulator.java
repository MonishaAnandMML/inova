package com.api.simulator;

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
import java.util.Enumeration;
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
import com.api.common.SEISOB93Packager;
import com.api.connector.ReceiveMessage;
import com.api.common.SSLConfiguration;
import com.api.connector.SendMessage;
import com.api.isoMessages.TLVMessage;

public class AcquirerSimulator implements ISORequestListener {

	public static final String MESSAGE_STATUS = "MessageStatus";
	public static ISOMsg SignInmessage;
	public static ISOMsg SignOffmessage;
	public static  NCCChannel[] Acqchannel = new NCCChannel[20];
	public static  NCCChannel channel = new NCCChannel();
	public static  NCCChannel acqchannel= new NCCChannel();
	private static Thread thread = null;
	private static ISOMsg isoMessage;
	private static ISOMsg responsereceived;
	private static Map<Integer, String> resultMap = new HashMap<Integer, String>();;
	private static Map<String, String> headerMap = new HashMap<String, String>();;
	private static SimpleLogSource logSource = null;
	private static AcquirerSimulator instance=new AcquirerSimulator();
	public IssuerSimulator is= IssuerSimulator.getInstance();
	
	private AcquirerSimulator() {
		Acqchannel=is.initialiseChannel(Acqchannel);
		
	}
	
	public static AcquirerSimulator getInstance() {
        return instance;
	}
	
	
//````````````````````````````````````````````````	
	public static NCCChannel[] startAcquirerConnection() throws Throwable {
		SignInmessage = GenericActions.initializeSignInMessage();
		String fpath=TestProperties.getPropertyValue(TestProperties.LOG_DIR);
		File path = new File(fpath);
		File file = new File(fpath + "/acquirer.log");
		if(path.exists()) {
			System.out.println("acquirer log file directory exists");
		
		Logger logger = new Logger();
		logger.addListener(new SimpleLogListener(new PrintStream(file)));
		logSource = new SimpleLogSource(logger, "generic");
	   	int numofchannels= Integer.parseInt(TestProperties.props.getProperty("numofchannel_acquirer"));
		System.out.println("no of acq channels"+numofchannels);
		
		for (int i=0; i<numofchannels;i++){
			

			if (!Acqchannel[i].isConnected()) {
			Acqchannel[i]=IssuerSimulator.connectIssuer(TestProperties.props.getProperty(TestProperties.props.getProperty("Acqchannel"+i)));
		    System.out.println("channel"+i+" is:"+TestProperties.props.getProperty(TestProperties.props.getProperty("Acqchannel"+i))); 
		}
		}
		}
		else {
			System.out.println("the file path doesnot exist");
		}
 
			return Acqchannel;
		}
		
	
	public static void signInAcquirers_all() throws Throwable {
		for(int i=0;i<Acqchannel.length;i++) {
			if(Acqchannel[i].isConnected()) {
				IssuerSimulator.sendSignInMessage(Acqchannel[i],"1");
			}

		}
	}


	public static NCCChannel chooseAcquirer(String routetype) {
		
		String acqinstid=isoMessage.getString(32);
		String Fwdinstid=isoMessage.getString(33);
		try {
		if (routetype.equals("AcquirerRoute")) {
			String key=null;
			for (Enumeration<?> e = TestProperties.props.propertyNames(); e.hasMoreElements(); ) {
			    String name = (String)e.nextElement();
			    String value = TestProperties.props.getProperty(name);
			    if (value.equals(acqinstid)) {
			    	key=name;
			        }
			    }
			String[] arrSplit = key.split("_");
			String acqName=arrSplit[0];
			for(int i=0;i<Acqchannel.length;i++) {
				if(Acqchannel[i].getHost().equals(TestProperties.props.getProperty(acqName)))
					channel=Acqchannel[i];
			}
			
				
		}
		
		if (routetype.equals("ForwardRoute")) {
			if (Fwdinstid.equals(TestProperties.props.getProperty("Acquirer1_fwdroute_IDCode"))) {
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
		String acqIP=acqchannel.getHost();
		String Acquirer=null;
		for (Enumeration<?> e = TestProperties.props.propertyNames(); e.hasMoreElements(); ) {
		    String name = (String)e.nextElement();
		    String value = TestProperties.props.getProperty(name);
		    if (value.equals(acqIP)) {
		    	Acquirer=name;
		        }
		    }
		 String acqEP=Acquirer+"_EP";
		 byte[] tpdu = isoMessage.getHeader();
		 tpdu[12]=(byte) Integer.parseInt(TestProperties.props.getProperty(acqEP));
		 isoMessage.setHeader(tpdu);
		 System.out.println("Header of message sent is "+Arrays.toString(tpdu));
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
		String AmountBilling6 = null;
		String CurrencyCodeBilling51 = null;
		String AmountSettlement5 = null;
		String CurrencyCodeSettlement50 = null;
		String CurrencyCodeTransaction49 = null;
		String AdditionalData2 = null;
	
		acqchannel=chooseAcquirer(routetype);
		System.out.println("Acquirer channel chosen is "+acqchannel.getHost());
		if(acqchannel.isConnected()) {
		ReceiveMessage receiveresponse= new ReceiveMessage(acqchannel);
		responsereceived=receiveresponse.call();
		System.out.println("message received by acq is"+responsereceived);
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
				
				if (responsereceived.getValue(6) != null) {
					logSource.info("Response in AcquirerSimulator for Field 6=="
							+ responsereceived.getValue(6).toString());

					resultMap.put(6, responsereceived.getValue(6).toString());
					AmountBilling6= resultMap.get(6);
					System.out.println(AmountBilling6);
				}
				
				if (responsereceived.getValue(51) != null) {
					logSource.info("Response in AcquirerSimulator for Field 51=="
							+ responsereceived.getValue(51).toString());

					resultMap.put(51, responsereceived.getValue(51).toString());
					CurrencyCodeBilling51= resultMap.get(51);
					System.out.println(CurrencyCodeBilling51);
				}
				
				if (responsereceived.getValue(5) != null) {
					logSource.info("Response in AcquirerSimulator for Field 5=="
							+ responsereceived.getValue(5).toString());

					resultMap.put(5, responsereceived.getValue(5).toString());
					AmountSettlement5= resultMap.get(5);
					System.out.println(AmountSettlement5);
				}
				
				if (responsereceived.getValue(50) != null) {
					logSource.info("Response in AcquirerSimulator for Field 50=="
							+ responsereceived.getValue(50).toString());

					resultMap.put(50, responsereceived.getValue(50).toString());
					CurrencyCodeSettlement50= resultMap.get(50);
					System.out.println(CurrencyCodeSettlement50);
				}
				
				if (responsereceived.getValue(49) != null) {
					logSource.info("Response in AcquirerSimulator for Field 49=="
							+ responsereceived.getValue(49).toString());

					resultMap.put(49, responsereceived.getValue(49).toString());
					CurrencyCodeTransaction49= resultMap.get(49);
					System.out.println(CurrencyCodeTransaction49);
				}
				
				if (responsereceived.getValue(63) != null) {
					
					logSource.info("Response in AcquirerSimulator for Field 63 AdditionalData2=="
							+ responsereceived.getValue(63).toString());
					
					resultMap.put(63, responsereceived.getValue(63).toString());
					AdditionalData2= resultMap.get(63);
					System.out.println(AdditionalData2);
					
					resultMap.put(63, TLVMessage.getValue(responsereceived.getBytes(63),"01").toString());
					logSource.info("AmountNetwork Field 63=="+ responsereceived.getValue(63).toString());
			        System.out.println("AmountNetwork in messages received by acquirer "+resultMap.get(63));
					
	              resultMap.put(63, TLVMessage.getValue(responsereceived.getBytes(63),"02").toString());
	              System.out.println("CurrencyCodeNetwork in messages received by acquirer "+resultMap.get(63));
					
				}
				
				
				resultMap.put(48, TLVMessage.getValue(responsereceived.getBytes(48),"01").toString());
				logSource.info("TransactionID Field 48=="+ responsereceived.getValue(48).toString());
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

	public static void closeAcquirerConnection_all() throws Throwable {
		SignOffmessage= GenericActions.initializeSignOffMessage();
		for(int i=0;i<Acqchannel.length;i++) {
			if(Acqchannel[i].isConnected()) {
				IssuerSimulator.signOff_disconnect(Acqchannel[i]);
				}			
		}
				
	  }
	
		public static void sendSignOffMessage(NCCChannel c,ISOMsg m) throws Throwable {
			SendMessage sendSignOff  = new SendMessage(c,m);
		    sendSignOff.sendMessageViaChannel();
		    ReceiveMessage receiveSignOffresponse= new ReceiveMessage(c);
			ISOMsg	SignOffresponsereceived=receiveSignOffresponse.call();
			System.out.println("signoff response received is "+SignOffresponsereceived);
		
			
		}
	

	public boolean process(ISOSource source, ISOMsg m) {
		// TODO Auto-generated method stub
		return false;
	}

	//----------------------------------------------Old code------------------------------------//
	
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
	
}