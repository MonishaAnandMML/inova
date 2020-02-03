package com.api.validation;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
import org.jpos.iso.ISOException;
import org.jpos.iso.ISOMsg;
import com.api.isoMessages.*;
import com.google.common.collect.ArrayListMultimap;
import com.google.common.collect.LinkedListMultimap;
import com.google.common.collect.ListMultimap;
import com.google.common.collect.Lists;
import com.mongodb.BasicDBObject;
import com.api.isoMessages.MessageMap;
import com.api.simulator.IssuerSimulator;
import com.api.database.MessageDB;


public class MessageQueue {

	public static LinkedListMultimap txnMap = LinkedListMultimap.<String, BasicDBObject>create();
	public static LinkedBlockingQueue<ISOMsg> receivedq=new LinkedBlockingQueue<ISOMsg>();
	public MessageDB msgdb=MessageMap.getInstance().messageDB;
	private static MessageQueue instance=new MessageQueue();
	
	private MessageQueue() {
		
	}
	
	public static MessageQueue getInstance() {
        return instance;
    }
	public LinkedListMultimap createTxnMap() {
		List<BasicDBObject> list= msgdb.returnList(msgdb.collection_curr);
		for(int i=0;i<list.size();i++) {
			BasicDBObject sentreq=list.get(i);
			BasicDBObject elem = (BasicDBObject) sentreq.get("message");
			String cardnum= elem.getString("PAN");
			txnMap.put(cardnum, elem);
			System.out.println(txnMap.get(cardnum));
		}
		   
		return txnMap;
	}
	
	public LinkedList getValuesfromMap(LinkedListMultimap<String, BasicDBObject> m) {
		LinkedList<BasicDBObject> values=Lists.newLinkedList();
		for(String key:m.keySet()) {
			if(!m.get(key).isEmpty())
			values.add(m.get(key).get(0));
		}
		return values;
	}
	
	public void removeValuesfromMap(LinkedListMultimap<String, BasicDBObject> m) {
		for(String key:m.keySet()) {
			BasicDBObject obj=m.get(key).get(0);
			m.remove(key, obj);
		
	}
		
	
	}
	
	public void addToq(ISOMsg m){
		receivedq.add(m);
		//return receivedq;
		
	}

	

	
}

