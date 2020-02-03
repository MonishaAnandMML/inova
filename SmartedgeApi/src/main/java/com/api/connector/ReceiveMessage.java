package com.api.connector;

import java.io.IOException;
import java.util.concurrent.Callable;

import org.jpos.iso.ISOException;
import org.jpos.iso.ISOMsg;
import org.jpos.iso.channel.NCCChannel;


public class ReceiveMessage implements Callable{
	
	private NCCChannel channel;
	private static ISOMsg receivedmsg;
   	public ReceiveMessage(NCCChannel channel) {
		this.channel = channel;
		
	}
	
	
public ISOMsg  call() throws Exception {
if(channel.isConnected()) {
	System.out.println("true");
}
 
  receivedmsg=channel.receive();
  
     return receivedmsg;

}
	
}