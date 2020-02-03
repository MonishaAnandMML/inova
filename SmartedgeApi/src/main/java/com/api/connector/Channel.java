package com.api.connector;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.jpos.iso.ISOMsg;
import org.jpos.iso.ISOUtil;
import org.jpos.iso.channel.NCCChannel;
import org.json.JSONObject;

import com.api.common.LoggerUtil;
import com.api.common.SSLConfiguration;
import com.api.common.TestProperties;

public class Channel {
	
   protected static Map <String, NCCChannel> channels = new HashMap<String, NCCChannel>();
	

    /**
     * This method returns channel initialized and stores in map.
     * @param ip
     * @param port
     * @return
     * @throws Exception
     */
	public static NCCChannel getChannel(String ip, int port) throws Exception {
		
		LoggerUtil.info(Channel.class , "Getting channel with ip " + ip + " and port " + port);
		
		// first check channel exist in map or not before initializing again
		NCCChannel channel = channels.get(ip);
		if(channel == null || !channel.isConnected()) {
			//in case if it is not connected then just set to null and recreate
			if(channel != null) {
				channel = null;
			}
			synchronized(Channel.class) {
				channel = channels.get(ip);
				if(channel == null){
					LoggerUtil.info(Channel.class , "Initializing channel with ip " + ip + " and port " + port);
					channel = getNCCChannel(ip,port);
					LoggerUtil.info(Channel.class, "Channel connected to  " + ip + " with ip address " + ip
							        + " and port " + port);
					channels.put(ip, channel);
				}
			}
			
		}
		LoggerUtil.info(Channel.class , "Returning channel with ip " + ip + " and port " + port);
		return channel;
	}
	
	public static  NCCChannel getNCCChannel(String ipAddress, int port)
			throws Exception {

		NCCChannel channel = new NCCChannel();

		channel = SSLConfiguration.newClientChannel();
		// acquirer_clientChannel.setHost("192.168.10.2", 9002);
                System.out.println("Ip address " + ipAddress + "port " + port);
		channel.setHost(ipAddress, port);
		channel.connect();

		LoggerUtil.info(Channel.class , "Returning channel with ip " + ipAddress + " and port " + port);
		// issuer_clientChannel.setHost("192.168.10.2", 9001);
		return channel;
	}
	
	/**
	 * This method is to disconnect all channels
	 * TBD: Need to integrate with the spring boot shut
	 * down mechanism
	 * @throws Exception
	 */
	public static void disconnectChannels() throws Exception {
		Iterator iter = channels.keySet().iterator();
		while(iter.hasNext()) {
			String name = (String)iter.next();
			NCCChannel channel = channels.get(name);
			if(channel !=null && channel.isConnected()){
				System.out.println("Disconnecting issuer " + name);
				channel.disconnect();
			}
		}
	}
	
	
	/**
	 * This method will get channel from Map based on ip and send message to channel
	 * @param ip
	 * @param port
	 * @param isomsg
	 * @throws Exception
	 */
	public static void send(NCCChannel channel, ISOMsg isomsg) throws Exception{
		LoggerUtil.info(Channel.class , "Sending ISO Msg " + ISOUtil.hexdump(isomsg.pack()));
		channel.send(isomsg);
	}
	
	/**
	 * Reads the ISO Msg from channel
	 * @param ip
	 * @param port
	 * @return
	 * @throws Exception
	 */
	public static ISOMsg read(NCCChannel channel) throws Exception{
		ISOMsg isomsg = channel.receive();
		LoggerUtil.info(Channel.class , ISOUtil.hexdump(isomsg.pack()));
		return isomsg;
	}
	
	

}
