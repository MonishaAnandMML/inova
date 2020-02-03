package com.api.connector;

import java.io.IOException;

import org.jpos.iso.ISOException;
import org.jpos.iso.ISOMsg;
import org.jpos.iso.channel.NCCChannel;

import com.api.simulator.IssuerSimulator;
import com.api.database.MessageDB;
import com.api.validation.MessageQueue;

public class ReceiveThread implements Runnable {
	String name;
	private NCCChannel channel;
	private ISOMsg receivedmsg;
	Thread t;
	public MessageQueue msgq=MessageQueue.getInstance();
	public IssuerSimulator is= IssuerSimulator.getInstance();

	
	public ReceiveThread(String name,NCCChannel channel) {
		 this.name=name;
		 this.channel=channel;
		 t=new Thread(this);
		 t.start();
	}

	@Override
	public void run() {
		while(true) {
		if(channel.isConnected()) {
			try {
				receivedmsg=channel.receive();
				is.issuer_Endpoint=channel;

			
			} catch (IOException | ISOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			  System.out.println("Message received is");
			  msgq.addToq(receivedmsg);
		}
		// TODO Auto-generated method stub
		
	}
	}
}
