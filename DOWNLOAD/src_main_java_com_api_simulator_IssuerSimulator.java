package com.api.simulator;


	import java.io.*;
    import java.nio.ByteBuffer;
	import org.jpos.iso.*;
	import org.jpos.util.*;
	import org.jpos.iso.channel.*;
    import com.api.common.GenericActions;
    import com.api.common.GenericValidations;
    import com.api.connector.ReceiveMessage;
    import com.api.common.SSLConfiguration;
	import com.api.connector.SendMessage;
	import com.api.common.TestProperties;
    import com.api.simulator.AcquirerSimulator;
	import com.mongodb.BasicDBObject;
	import com.api.isoMessages.MessageMap;
	import com.api.connector.ReceiveThread;
	import com.api.database.MessageDB;
    import com.api.database.SqliteDB;
//    import cucumber.features.CommonStepDefinition;
	import java.util.Map;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;


	public class IssuerSimulator implements ISORequestListener {
		
		public static  NCCChannel[] channel = new NCCChannel[50];
		public static ISOMsg[] signInResponse = new ISOMsg[19];
		public static  NCCChannel issuer_Endpoint= new NCCChannel();
		public static  NCCChannel VISAissuer_Endpoint= new NCCChannel();
		public static  NCCChannel endpoint = new NCCChannel();
		public static ISOMsg SignInmessage;
		public static ISOMsg SignOffmessage;
		private static ISOMsg receivedRequest;
		private static Map<Integer, String> resultMap = new HashMap<Integer, String>();
		private static SimpleLogSource logSource = null;
        private static IssuerSimulator instance=new IssuerSimulator();
        public static int numofchannels;
	
        private IssuerSimulator() {
			channel=initialiseChannel(channel);
			
		}
		
		public static IssuerSimulator getInstance() {
	        return instance;
		}
		

	
		public  NCCChannel[] startIssuerConnection() throws Throwable {
			SignInmessage = GenericActions.initializeSignInMessage();
			String fpath=TestProperties.getPropertyValue(TestProperties.LOG_DIR);
			File path = new File(fpath);
			File file = new File(fpath + "/issuer.log");
			if(path.exists()) {
				System.out.println("issuer log file directory exists");
			
			Logger logger = new Logger();
			logger.addListener(new SimpleLogListener(new PrintStream(file)));
			logSource = new SimpleLogSource(logger, "generic");
		     //issuer1	
			numofchannels= Integer.parseInt(TestProperties.props.getProperty("numofchannel_issuer"));
			System.out.println("no of issuer channels"+numofchannels);
			for (int i =0; i<numofchannels;i++) {
			if (!channel[i].isConnected()) {
				System.out.println("trying to connect");
				//channel[0]=connectIssuer(TestProperties.getPropertyValue(TestProperties.ISSUER1));
				channel[i]=connectIssuer(TestProperties.props.getProperty(TestProperties.props.getProperty("channel"+i)));
			    System.out.println("channel"+i+" is:"+TestProperties.props.getProperty(TestProperties.props.getProperty("channel"+i))); 
			}
			}
			}
			else {
				System.out.println("the file path doesnot exist");
			}
		
				return channel;
			}


	
		public static byte[] modifyIssuerHeader(byte tpdu[]) {
			byte[] srcep=Arrays.copyOfRange(tpdu, 7, 10);
			byte[] destep=Arrays.copyOfRange(tpdu, 10, 13);
			ByteBuffer srcbuffer=ByteBuffer.wrap(tpdu);
			srcbuffer.position(7);
			srcbuffer.put(destep);
			ByteBuffer destbuffer=ByteBuffer.wrap(tpdu);
			destbuffer.position(10);
			srcbuffer.put(srcep);
			return tpdu;

	}

	public static NCCChannel chooseIssuerEndPoint(String account,boolean ispindata) {
		System.out.println("ispindata" + ispindata);
		System.out.println("account " + account);
		
		String accountrange = account.substring(0, 6);
		
		String key=null;
		ArrayList<String>matchedval=new ArrayList<String>();
		for (Enumeration<?> e = TestProperties.props.propertyNames(); e.hasMoreElements(); ) {
		    String name = (String)e.nextElement();
		    String value = TestProperties.props.getProperty(name);
		    if (value.equals(accountrange)) {
		    	matchedval.add(name);
		    }
		}
		for(int i=0;i<matchedval.size();i++){
		    System.out.println("list is"+matchedval.get(i));
		} 
		if(ispindata == true) {
			if(matchedval.size()>1) {
		       for(int i=0;i<matchedval.size();i++) {
			    	String[] arrSplit = matchedval.get(i).split("_");
			    	List<String> list = Arrays.asList(arrSplit);
			     	if(list.contains("Pin")) {
			     		System.out.println("haspin");
			    	    		key=arrSplit[0]+"_"+arrSplit[1];
		    	}
		      }
			}
			else {
				for(int i=0;i<matchedval.size();i++) {
			    	String[] arrSplit = matchedval.get(i).split("_");
			 		key=arrSplit[0];
			    	}
			}
		}
    	else if(ispindata == false) {
    		for(int i=0;i<matchedval.size();i++) {
		    	String[] arrSplit = matchedval.get(i).split("_");
		 		key=arrSplit[0];
		    	}
		   
		}
		for(int i=0;i<numofchannels;i++) {
			if(channel[i].getHost().equals(TestProperties.props.getProperty(key))) {
				endpoint=channel[i];
				
			}
		}
	
		System.out.println("Endpoint chosen is" + endpoint.getHost());

		return endpoint;
	}
	
	public static NCCChannel chooseIssuerVisaEndPoint(String account, boolean ispindata, boolean isCash) {
		
		String pindata;
		String tranType;
	    System.out.println("ispindata" + ispindata);
	    System.out.println("iscash" + ispindata);
		String accountrange = account.substring(0, 6);
   	System.out.println("account range = " + accountrange);
		
		if ( (accountrange.equals("222011") || accountrange.equals("222088") || accountrange.equals("222099")|| accountrange.equals("222014") || accountrange.equals("222015") || accountrange.equals("222016") || accountrange.equals("222017") || accountrange.equals("222018") || accountrange.equals("222019") || accountrange.equals("222020")  || accountrange.equals("222021") || accountrange.equals("222999") || accountrange.equals("222023") || accountrange.equals("222024") || accountrange.equals("222025") || accountrange.equals("222026") || accountrange.equals("222027") || accountrange.equals("222028") || accountrange.equals("222029") || accountrange.equals("222030") || accountrange.equals("222031") || accountrange.equals("222032") || accountrange.equals("222033") || accountrange.equals("222034") || accountrange.equals("222035") || accountrange.equals("222036") || accountrange.equals("222037") || accountrange.equals("222038") || accountrange.equals("222040")) && (ispindata == false)) {
			endpoint = channel[0];
	
		} 
		else if ( (accountrange.equals("222011") || accountrange.equals("222088") || accountrange.equals("222099")|| accountrange.equals("222014") || accountrange.equals("222015")  || accountrange.equals("222016") ||accountrange.equals("222017") || accountrange.equals("222018") || accountrange.equals("222019") || accountrange.equals("222020")  || accountrange.equals("222021") || accountrange.equals("222999") || accountrange.equals("222023") || accountrange.equals("222024") || accountrange.equals("222025") || accountrange.equals("222026") || accountrange.equals("222027") || accountrange.equals("222028") || accountrange.equals("222029") || accountrange.equals("222030") || accountrange.equals("222031") || accountrange.equals("222032") || accountrange.equals("222033") || accountrange.equals("222034") || accountrange.equals("222035") || accountrange.equals("222036") || accountrange.equals("222037") || accountrange.equals("222038") || accountrange.equals("222040")) && (ispindata == true)) {
			endpoint = channel[1];
		}
		
		else if (accountrange.equals("222041")&& (ispindata == false)&&(isCash == true)) {
				endpoint = channel[2];
	       }
		
		else if (accountrange.equals("222041") && (ispindata == true) &&(isCash == true)) {
			endpoint = channel[3];
	   }
		System.out.println("Endpoint chosen is" + endpoint.getHost());
	
		return endpoint;
	}


	public static ISOMsg receiveRequest() throws Exception {
		String PinData=GenericValidations.isoMsg.getString(52);
		String CashData= GenericValidations.isoMsg.getString(3).substring(2, 4);
		System.out.println("cashdata is"+CashData);
		boolean isPinData=true;
		boolean isCashData=false;
		
		if(PinData==null)
			isPinData=false;
		if(CashData.equals("01"))
			isCashData=true;
		if(TestProperties.props.getProperty("profile").equals("VISA_profiles")) {
			issuer_Endpoint = chooseIssuerVisaEndPoint(GenericValidations.isoMsg.getString(2),isPinData,isCashData);
	
		}
		else {
		issuer_Endpoint = chooseIssuerEndPoint(GenericValidations.isoMsg.getString(2),isPinData);
		}
		System.out.println("IssuerEndpoint chosen is " + issuer_Endpoint.getHost());
	
		if (issuer_Endpoint.isConnected()) {
			System.out.println("issuer channel is connected");
			ReceiveMessage receiverequest = new ReceiveMessage(issuer_Endpoint);
			receivedRequest = receiverequest.call();
			System.out.println("Receive Request " + receivedRequest);

		}
				return receivedRequest;
	}
	
	
	public static ISOMsg receiveAdviceRequest(int i) throws Exception {
		
		issuer_Endpoint = chooseIssuerEndPoint(getPAN(i),getPindata(i));
		System.out.println("IssuerEndpoint chosen is " + issuer_Endpoint.getHost());
		if (issuer_Endpoint.isConnected()) {

			ReceiveMessage receiverequest = new ReceiveMessage(issuer_Endpoint);
			receivedRequest = receiverequest.call();


		}
		return receivedRequest;
	}
	

	public static String getPAN(int i) {
		BasicDBObject sentreq=MessageMap.getInstance().messageDB.returnList(MessageMap.getInstance().messageDB.collection_curr).get(i-1);
		BasicDBObject elem = (BasicDBObject) sentreq.get("message");
		String account =elem.getString("PAN");
		return account;
	}
	
	public static boolean getPindata(int i) {
		BasicDBObject sentreq=MessageMap.getInstance().messageDB.returnList(MessageMap.getInstance().messageDB.collection_curr).get(i-1);
		BasicDBObject elem = (BasicDBObject) sentreq.get("message");
		boolean isPinData =elem.getBoolean("isPinData");
		return isPinData;
	}
	
	

	public static byte[] createIssuerHeader(NCCChannel ch) {

		// NCCChannel endpoint=channel;
		byte[] tpdu = { 3, 0, 0, 1, 0, 0, 1, 0, 0, 17, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
		
		String key=null;
		for (Enumeration<?> e = TestProperties.props.propertyNames(); e.hasMoreElements(); ) {
		    String name = (String)e.nextElement();
		    String value = TestProperties.props.getProperty(name);
		    if (value.equals(ch.getHost())) {
		    	
		    	key=name;
		        }
		    }
		      String key_to_ep=key+"_EP";
		      tpdu[12]=(byte) Integer.parseInt(TestProperties.props.getProperty(key_to_ep));
		    System.out.println("header is "+Arrays.toString(tpdu));
    		return tpdu;
	}



	public static ISOMsg processMessage(ISOMsg m) {

		logSource.info("Issuer message processing started");
		System.out.println("Processing code to be processed" + m.getString(3));

		SqliteDB db = new SqliteDB();
		try {

			logSource.info("Issuer Received MTI = " + m.getMTI() + " Amount = " + m.getValue(4) + " Field46 = "
					+ m.getValue(46) + " Field39 = " + m.getValue(39));
			// To check if issuer received correct data for field 4 (trans amt)
			// resultMap.put(4, m.getValue(4).toString());
			resultMap.put(2, m.getValue(2).toString());

			String cardNumber = m.getValue(2).toString();
			logSource.info("Card number which Issuer received ==" + cardNumber);
			// For the cardNumber which issuer received, get the issuer response
			// from sqliteDB
			String response = db.getValue(cardNumber, "issuerResponse");
			logSource.info("SQLITE RESPONSE *********** " + response);

			if (response != null) {
				m.set(39, response);
				/*
				 * byte[] tpdu1 = { 3, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0,
				 * 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				 * 0, 0, 0, 0, 0, 0, 0 };
				 */

				// logSource.info("Sending Response =" + m.getValue(39) + "Amount =" +
				// m.getValue(4));
				m.unset(14);
				m.unset(40);
				m.set(38, "123456");
				m.unset(33);
				m.unset(45);
				m.unset(35);
				m.unset(52);
				m.unset(53);
				m.setHeader(modifyIssuerHeader(m.getHeader()));
				System.out.println("before MTI" + m.getString(3));
				m.setResponseMTI();
				System.out.println("after MTI" + m.getString(3));
				// m.set(3, "010000");

			} else {
				logSource.info("Card has no response");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			try {

				db.closeConnection();

			} catch (Exception ex) {

				ex.printStackTrace();

			}

		}
		return m;
	}

	public static void sendResponse(ISOMsg msg, String timeout) throws Throwable {
			System.out.println("endpoint is"+issuer_Endpoint.getHost());
		SendMessage sendresponse = new SendMessage(issuer_Endpoint, msg);
		Thread.sleep(Integer.parseInt(timeout));
		System.out.println("header for issuer sent response " + Arrays.toString(msg.getHeader()));
		sendresponse.sendMessageViaChannel();
	}

	public static NCCChannel connectIssuer(String hostname) throws Throwable, ISOException {
		NCCChannel ch= new NCCChannel();
		 ch = SSLConfiguration.newClientChannel();
		 ch.setHost(hostname, 9001);
	     ch.connect();
	     return ch;
		
	}
	


	public static ISOMsg sendSignInMessage(NCCChannel c, String mode) throws Throwable {
		System.out.println("trying to sign in");
		SignInmessage = GenericActions.initializeSignInMessage();
		SignInmessage.setHeader(createIssuerHeader(c));
		System.out.println("header in signin message is:"+Arrays.toString(SignInmessage.getHeader()));
		GenericActions.setRecoveryMode(SignInmessage, mode);
		SendMessage sendSignIn = new SendMessage(c, SignInmessage);
		sendSignIn.sendMessageViaChannel();
		ReceiveMessage receiveSignInresponse = new ReceiveMessage(c);
		ISOMsg SignInresponsereceived = receiveSignInresponse.call();
		System.out.println("signin response received"+SignInresponsereceived);
		return SignInresponsereceived;

		
	}
	
	public static void signInIssuers_all() throws Throwable {
		for(int i=0;i<channel.length;i++) {
			if(channel[i].isConnected()) {
				sendSignInMessage(channel[i],"1");
			}

		}
	}
	public static void closeIssuerConnection_all() throws Throwable {
		SignOffmessage= GenericActions.initializeSignOffMessage();
		for(int i=0;i<channel.length;i++) {
			if(channel[i].isConnected()) {
				signOff_disconnect(channel[i]);
				}			
		}
				
	  }
	
	public static void closeIssuerConnection(String issuer) throws Throwable {
		SignOffmessage= GenericActions.initializeSignOffMessage();
		if(issuer.equals("ABCBKABL001")) {
			signOff_disconnect(channel[0]);
			signOff_disconnect(channel[1]);
			signOff_disconnect(channel[2]);
		}
	
		else if(issuer.equals("XYZBKABL001")) {
			signOff_disconnect(channel[3]);
			signOff_disconnect(channel[4]);
		}

		else if(issuer.equals("PQRBKABL001")) {
			signOff_disconnect(channel[5]);
			signOff_disconnect(channel[6]);

		}
		else if(issuer.equals("BOABKABL001")) {
			signOff_disconnect(channel[7]);
			signOff_disconnect(channel[8]);
			signOff_disconnect(channel[9]);
			signOff_disconnect(channel[10]);
			signOff_disconnect(channel[11]);
		}
		
		else if(issuer.equals("ABCBKABL004")) {		
			signOff_disconnect(channel[12]);
			signOff_disconnect(channel[13]);
			signOff_disconnect(channel[14]);
		}

		

		else if(issuer.equals("ABCBKABL008")) {	
			signOff_disconnect(channel[15]);
			signOff_disconnect(channel[16]);
			signOff_disconnect(channel[17]);

		}
		else if(issuer.equals("SAXOINKA0003")) {
			signOff_disconnect(channel[18]);
		}		
	}
	


	

	public static void signInIssuer(String issuer) throws Throwable {
		if(issuer.equals("ABCBKABL001")) {
			sendSignInMessage(channel[0],"2");
			sendSignInMessage(channel[1],"2");
			sendSignInMessage(channel[2],"2");

		}
		else if(issuer.equals("XYZBKABL001")) {
			sendSignInMessage(channel[3],"2");
			sendSignInMessage(channel[4],"2");

		}
		else if(issuer.equals("PQRBKABL001")) {
			sendSignInMessage(channel[5],"2");
			sendSignInMessage(channel[6],"2");
			
		}
		
		else if(issuer.equals("BOABKABL001")) {
			sendSignInMessage(channel[7],"2");
            sendSignInMessage(channel[8],"3");
			sendSignInMessage(channel[9],"2");
			sendSignInMessage(channel[10],"2");
			sendSignInMessage(channel[11],"2");

		}
		
		else if(issuer.equals("ABCBKABL004")) {
			sendSignInMessage(channel[12],"2");
			sendSignInMessage(channel[13],"2");
			sendSignInMessage(channel[14],"2");
		}
		else if(issuer.equals("ABCBKABL008")) {
			sendSignInMessage(channel[15],"2");
			sendSignInMessage(channel[16],"2");
			sendSignInMessage(channel[17],"2");
		}
	}
	

	
	public static void receiveInThread(String issuer) {
		if(issuer.equals("PQRBKABL001")) {
			System.out.println("starting pqr receive threads");
			ReceiveThread PQR=new ReceiveThread("PQR_base",channel[5]);
			ReceiveThread PQR_pin=new ReceiveThread("PQR_pin",channel[6]);
			}
		
		if(issuer.equals("BOABKABL001")) {
			ReceiveThread BOA=new ReceiveThread("BOA_base",channel[7]);
			ReceiveThread BOA_pin_1=new ReceiveThread("BOA_pin_1",channel[8]);
			ReceiveThread BOA_pin_2=new ReceiveThread("BOA_pin_2",channel[10]);
			ReceiveThread BOA1_1=new ReceiveThread("BOA1_base_1",channel[9]);
			ReceiveThread BOA1_2=new ReceiveThread("BOA1_base_2",channel[11]);
			
		}
	}

	public static void signOff_disconnect(NCCChannel c) throws Throwable {
		System.out.println("signing off"+ c.getHost());
		SignOffmessage.setHeader(createIssuerHeader(c));
		System.out.println("header in signoff message"+Arrays.toString(SignOffmessage.getHeader()));
		AcquirerSimulator.sendSignOffMessage(c, SignOffmessage);
		c.disconnect();
	}

	
	public static NCCChannel[] initialiseChannel(NCCChannel[] ch) {
		for(int i=0;i<ch.length;i++) {
			if(ch[i]==null)
			ch[i]=new NCCChannel();
		}
		return ch;
	}
	 
	
	public boolean process(ISOSource source, ISOMsg m) {
		// TODO Auto-generated method stub
		return false;
	}
	
}
