package com.api.common;

import java.time.Instant;
import org.jpos.iso.ISOMsg;
import com.aventstack.extentreports.ExtentReports;
import com.aventstack.extentreports.ExtentTest;
import com.aventstack.extentreports.reporter.ExtentHtmlReporter;
import com.api.database.MessageDB;
import com.api.isoMessages.MessageHeader;
import com.api.isoMessages.MessageMap;
import com.api.simulator.AcquirerSimulator;

//import cucumber.api.java.Before;

import com.api.simulator.IssuerSimulator;

public class GenericValidations extends GenericActions {
	
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
	public static SEISOB93Packager ISO93bpkg = new SEISOB93Packager();
	public static ExtentHtmlReporter htmlReporter;
	public static ExtentReports extent;
	public static ExtentTest test;
	public static Instant startTransaction;
	public IssuerSimulator is= IssuerSimulator.getInstance();
	public AcquirerSimulator acq= AcquirerSimulator.getInstance();
	public MessageMap mp=MessageMap.getInstance();
	public MessageDB msgdb=mp.messageDB;
		
	
	public void beforeScenario() throws Throwable {
		System.out.println("isFirsttime"+mp.isfirstTime);
		try {if(mp.isfirstTime) {
			msghdr = new MessageHeader("3","1","1","0","11","0","1","10","0","0");
			logger.info("creating message map");
			msgdb.clearCollection();
			logger.info("Starting Simulator servers");
			is.startIssuerConnection();
			is.signInIssuers_all();
			acq.startAcquirerConnection();
			acq.signInAcquirers_all();
			Runtime.getRuntime().addShutdownHook(new Thread() {
				public void run() {
					//logger.info("Stopping simulator servers");
					try {
						

						//IssuerSimulator.closeConnection();;


						//is.closeConnection();;


						
						
					} catch (Exception exc) {
						exc.printStackTrace();
					} catch (Throwable e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			});
		} 
		
		}
		catch (Exception exc) {
			throw new RuntimeException("Setup failed");
		}
		
		mp.isfirstTime= false;
	}

	public void beforeScenario1() throws Throwable {
		try {
			msghdr = new MessageHeader("3","1","1","0","11","0","1","10","0","0");
			logger.info("creating message map");
			MessageMap.getInstance();
			
			logger.info("Starting Simulator servers");
			//AcquirerSimulator.startAcquirerConnection();
		
			Runtime.getRuntime().addShutdownHook(new Thread() {
				public void run() {
					logger.info("Stopping simulator servers");
					try {
						

						//IssuerSimulator.closeConnection();;
	
						
					} catch (Exception exc) {
						exc.printStackTrace();
					} catch (Throwable e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			});
		} catch (Exception exc) {
			throw new RuntimeException("Setup failed");
		}
	}
	


}
