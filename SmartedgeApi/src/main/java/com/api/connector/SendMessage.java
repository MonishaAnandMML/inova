package com.api.connector;

import java.io.IOException;

import org.jpos.iso.ISOException;
import org.jpos.iso.ISOMsg;
import org.jpos.iso.channel.NCCChannel;


public class SendMessage implements Runnable{
	
	private NCCChannel channel;
	private ISOMsg m;
	public SendMessage(NCCChannel channel,ISOMsg m) {
		this.channel = channel;
		this.m =m;
	}
	

public void sendMessageViaChannel() throws Throwable, ISOException {
	
	channel.send(m);
}
public void run() {
	try {
		 
		channel.send(m);
		
		
			
	} catch (IOException e) {
	System.out.println("IO exception");
		e.printStackTrace();
	} catch (ISOException e) {
		System.out.println("Iso exception");
		e.printStackTrace();
	} 
	
	
}
}	
		
	

	
	

