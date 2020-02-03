package com.api.connector;

import java.util.concurrent.Callable;

import org.jpos.iso.ISOMsg;

import com.api.validation.MessageQueue;

public class ValidateThread implements Callable {
	String name;
	Thread t;
	public MessageQueue msgq=MessageQueue.getInstance();
	public ISOMsg receivedmsg; 
	
	public ValidateThread(String name) {
		this.name=name;
		//t=new Thread(this);
	   // t.start();
	}
	

	@Override
	public ISOMsg call() throws Exception {
		while(true) {
		receivedmsg=msgq.receivedq.take();
		System.out.println("message taken is"+receivedmsg);
		return receivedmsg;
		}
	}
	

}
