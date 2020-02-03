package com.api.database;

import com.api.isoMessages.MessageElements;
import com.api.isoMessages.MessageMap;

import java.lang.reflect.Array;
import java.net.UnknownHostException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import javax.swing.text.Document;

import org.jpos.iso.ISOException;
import org.jpos.iso.ISOMsg;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.mongodb.BasicDBList;
import com.mongodb.BasicDBObject;
import com.mongodb.BasicDBObjectBuilder;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient; 
import com.mongodb.MongoException;
import com.mongodb.WriteResult;
import com.mongodb.util.JSON;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class MessageDB { 
  public  DBCollection collection,collection1,collection_curr,collection1_curr,authcollection,authcollection_curr,
                        validateFile;
  public DB db;
  public MongoClient mongo;
   

public void connectDb() throws UnknownHostException  {
       mongo = new MongoClient("localhost", 27017);
       db = mongo.getDB("isoMessageDB");
       collection = db.getCollection("SentRequest");
       collection1 = db.getCollection("ReceivedAdvice");
       collection_curr=db.getCollection("SentRequest_Curr");
       collection1_curr=db.getCollection("ReceivedAdvice_Curr");
       authcollection=db.getCollection("Authrequest");
       authcollection_curr=db.getCollection("Authrequest_Curr");
       validateFile=db.getCollection("ValidateFile");
       }


   public void ReceivedAdvice_update() throws ISOException{
	   Gson gson = new Gson();
	   MessageElements ele= getElement(MessageMap.getValue("advicereceived"));
	   BasicDBObject obj = (BasicDBObject)JSON.parse(gson.toJson(ele));
       BasicDBObjectBuilder documentBuilder = BasicDBObjectBuilder.start()
               .add("message", obj)
               .add("timestamp", new Timestamp(System.currentTimeMillis()));
          db.getCollection("ReceivedAdvice").insert(documentBuilder.get());
          db.getCollection("ReceivedAdvice_Curr").insert(documentBuilder.get());
   }
   
   public void SentRequest_update(String priority,ISOMsg m) throws Throwable{
	   Gson gson = new Gson();
	   MessageElements ele= getElement(m);
	   BasicDBObject obj = (BasicDBObject)JSON.parse(gson.toJson(ele));
       BasicDBObjectBuilder documentBuilder = BasicDBObjectBuilder.start()
               .add("message", obj)
               .add("priority",priority)
               .add("timestamp", new Timestamp(System.currentTimeMillis()));
         db.getCollection("SentRequest").insert(documentBuilder.get());
         db.getCollection("SentRequest_Curr").insert(documentBuilder.get());
         System.out.println("inserting documents into current collection");

   }
 
	public void AuthRequest_update(String json) throws Throwable{
	  DBObject dbObject = (DBObject)JSON.parse(json);
	   db.getCollection("Authrequest").insert(dbObject);
	   db.getCollection("Authrequest_Curr").insert(dbObject);
   }
	
	public String fetchRRN_AuthCurr(String casenum) {
		BasicDBObject retrieveProjection = new BasicDBObject("RetrievalReferenceNumber", 1);
		BasicDBObject search_query=new BasicDBObject();
		search_query.put("TestCaseNum", casenum);
		DBCursor result= db.getCollection("Authrequest_Curr").find(search_query,retrieveProjection);;
		String rrn = "";
	     while(result.hasNext())
	     {
	    	 rrn=result.next().get("RetrievalReferenceNumber").toString();                
	     } 
	     System.out.println("rrn is"+rrn);
	     return rrn;
	}
	
	public void validateFile_update(String casenum,String response,String filename) {
		String rrn =fetchRRN_AuthCurr(casenum);
		BasicDBObjectBuilder documentBuilder = BasicDBObjectBuilder.start()
				   .add("filename", filename)
	               .add("casenumber", casenum)
	               .add("rrn",rrn)
	               .add("expected_response", response);
		db.getCollection("ValidateFile").insert(documentBuilder.get());
		System.out.println("inserting expected response");
	}
   
   public long AuthRequest_get() throws Throwable {
	   DBCursor myCursor=authcollection_curr.find();
	   long totalAmountTxn=0;
	   while(myCursor.hasNext()){ 
		   DBObject dbObject=myCursor.next();
		   if(dbObject.containsField("AmountTransaction")) {
			   String amountTXn=(String)dbObject.get("AmountTransaction");
			   totalAmountTxn+=Integer.parseInt(amountTXn);
		   }
		   else {
			   System.out.println("Item AmountTransactionnot found in DBObject!");
		   }

 
	   }
	   return totalAmountTxn;
   }
   
   public ArrayList<DBObject> AuthRequest_query(String seid, String routeid) {
	 ArrayList<DBObject> result=new ArrayList<DBObject>();
	 BasicDBObject removeIdProjection = new BasicDBObject("_id", 0);
     BasicDBObject seid_query=new BasicDBObject();
     seid_query.put("SEID", seid);
     seid_query.put("AcquiringInstitutionIdCode", routeid);
     DBCursor cursor= db.getCollection("Authrequest_Curr").find(seid_query,removeIdProjection);
     while(cursor.hasNext()) {
    	 DBObject obj=cursor.next();
    	 result.add(obj);
    	 	}
    return  result;
   }

   
   private MessageElements getElement(ISOMsg m) throws ISOException {
	   MessageElements ele= new MessageElements();
	   ele.setMTI(m);
	   ele.setRRN(m);
	   ele.setCardNum(m);
	   ele.chkPin(m);
	   return ele;
	   
   }
   
   public int getCount(DBCollection c) {
	   int count = (int) c.count();
	   return count;
   }
   
   public List<BasicDBObject> returnList(DBCollection c){
	   List<BasicDBObject> list = new LinkedList<BasicDBObject>(); 
	   DBCursor cursor = c.find().sort(new BasicDBObject("priority",1).append("timestamp", 1));
	   while(cursor.hasNext()) {
		   list.add((BasicDBObject) cursor.next());
	   }
	   for(int i=0;i<list.size();i++) {
		   System.out.println("item is"+list.get(i));
	   }
	   return list;
	
   }

   

      
   public void clearCollection() {
	   
	   collection_curr.remove(new BasicDBObject());
	   collection1_curr.remove(new BasicDBObject());
	   authcollection_curr.remove(new BasicDBObject());
   }
  
   
}