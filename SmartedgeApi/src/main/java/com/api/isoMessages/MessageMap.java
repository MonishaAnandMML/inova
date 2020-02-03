package com.api.isoMessages;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Map;

import org.jpos.iso.ISOMsg;

import com.api.database.MessageDB;

public class MessageMap  {
	public MessageDB messageDB= new MessageDB();
	private static final HashMap<String, ISOMsg> map = new HashMap<>();
    private static MessageMap instance = new MessageMap();
    public boolean isfirstTime=true;


    private MessageMap()   {
    	try {
			messageDB.connectDb();
			
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }

    public static MessageMap getInstance() {
        return instance;
    }

    public static ISOMsg getValue(String key) {
        return map.get(key);
    }

    public static void setValue(String key,ISOMsg val) {
       map.put(key, val);
    }
    
    public static boolean chkKey(String key) {
    	return map.containsKey(key);
    }
    
    public static void printMap()
    {
    	for (Map.Entry<String, ISOMsg> entry : map.entrySet()) {
		    System.out.println(entry.getKey()+" : "+entry.getValue());
		}
    
    }
    
    public static void add(String[] keys, ISOMsg msg) {
        for (int i = 0; i < keys.length; ++i) {
            map.put(keys[i], msg);
        }
    }

}
