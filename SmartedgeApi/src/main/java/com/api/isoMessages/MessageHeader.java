package com.api.isoMessages;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;




public class MessageHeader {
	
	public Map<String,String> headermap= new HashMap<String,String>();
	
	public MessageHeader(String HeaderFormatID,String NetworkID,String MessageFormatId,String DestinationEndpointID,String SourceEndpointID,String MessageStatus,String SEDeviceID,String DynamicTimeoutValue,String CorrelationID,String ExtendedHeader) {
		headermap.put("HeaderFormatID", HeaderFormatID);
		headermap.put("NetworkID", NetworkID);
		headermap.put("MessageFormatId", MessageFormatId);
		headermap.put("DestinationEndpointID", DestinationEndpointID);
		headermap.put("SourceEndpointID", SourceEndpointID);
		headermap.put("MessageStatus", MessageStatus);
		headermap.put("SEDeviceID", SEDeviceID);
		headermap.put("DynamicTimeoutValue", DynamicTimeoutValue);
		headermap.put("CorrelationID", CorrelationID);
		headermap.put("ExtendedHeader", ExtendedHeader);
	}
		
	public void updateMap(String key, String value) {
		headermap.replace(key, value);
	}
	
	
		public void modifyHeader(String element, String value) {
		switch(element) {
		 case "HeaderFormatID":
			 headermap.replace("HeaderFormatID", value);
			 break;
		 case "NetworkID":
			 headermap.replace("NetworkID", value);
			 break; 
		 case "MessageFormatId":
			 headermap.replace("MessageFormatId", value);
			 break;
		 case "DestinationEndpointID":
			 headermap.replace("DestinationEndpointID", value);
			 break;
		 case "SourceEndpointID":
			 headermap.replace("SourceEndpointID", value);
			 break;
		 case "MessageStatus":
			 headermap.replace("MessageStatus", value);
			 break;
		 case "SEDeviceID":
			 headermap.replace("SEDeviceID", value);
			 break;
		 case "DynamicTimeoutValue":
			 headermap.replace("DynamicTimeoutValue", value);
			 break;
		 case "CorrelationID":
			 headermap.replace("CorrelationID", value);
			 break;
		 case "ExtendedHeader":
			 headermap.replace("ExtendedHeader", value);
			 break;
		}
	}
	
	public  byte[] encodeHeader() throws IOException {
		 
		byte[] headerformat= new byte[1];
		byte[] networkid= new byte[3];
		byte[] msgformatid= new byte[3];
		byte[] destid= new byte[3];
		byte[] sourceid= new byte[3];
		byte[] msgstatus= new byte[3];
		byte[] sedeviceid= new byte[3];
		byte[] dynamictimeout= new byte[3];
		byte[] corid= new byte[15];
		byte[] extheader= new byte[15];
		ByteArrayOutputStream outputStream = new ByteArrayOutputStream( );
		outputStream.write(str2bcd(headermap.get("HeaderFormatID") ,true, headerformat,0));
		outputStream.write(str2bcd(headermap.get("NetworkID"), true, networkid,2));
		outputStream.write(str2bcd(headermap.get("MessageFormatId"), true, msgformatid,2));
		outputStream.write(str2bcd(headermap.get("DestinationEndpointID"), true, destid,2));
		outputStream.write(str2bcd(headermap.get("SourceEndpointID"), true, sourceid,2));
		outputStream.write(str2bcd(headermap.get("MessageStatus"), true, msgstatus,2));
		outputStream.write(str2bcd(headermap.get("SEDeviceID"), true, sedeviceid,2));
		outputStream.write(str2bcd(headermap.get("DynamicTimeoutValue"), true, dynamictimeout,2));
		outputStream.write(str2bcd(headermap.get("CorrelationID"), true, corid,14));
		outputStream.write(str2bcd(headermap.get("ExtendedHeader"), true, extheader,14));
		byte[]tpdu = outputStream.toByteArray();	
		return tpdu;
				
	}
	
	public  byte[] encodeHeader(String fieldname) throws IOException {
		 
		byte[] headerformat= new byte[1];
		byte[] networkid= new byte[3];
		byte[] msgformatid= new byte[3];
		byte[] destid= new byte[3];
		byte[] sourceid= new byte[3];
		byte[] msgstatus= new byte[3];
		byte[] sedeviceid= new byte[3];
		byte[] dynamictimeout= new byte[3];
		byte[] corid= new byte[15];
		byte[] extheader= new byte[15];
		ByteArrayOutputStream outputStream = new ByteArrayOutputStream( );
		if(fieldname.equals("HeaderFormatID")) {
			outputStream.write(headermap.get("HeaderFormatID").getBytes());
		}
		else {
		outputStream.write(str2bcd(headermap.get("HeaderFormatID") ,true, headerformat,0));
		}
		outputStream.write(str2bcd(headermap.get("NetworkID"), true, networkid,2));
		outputStream.write(str2bcd(headermap.get("MessageFormatId"), true, msgformatid,2));
		outputStream.write(str2bcd(headermap.get("DestinationEndpointID"), true, destid,2));
		outputStream.write(str2bcd(headermap.get("SourceEndpointID"), true, sourceid,2));
		outputStream.write(str2bcd(headermap.get("MessageStatus"), true, msgstatus,2));
		outputStream.write(str2bcd(headermap.get("SEDeviceID"), true, sedeviceid,2));
		outputStream.write(str2bcd(headermap.get("DynamicTimeoutValue"), true, dynamictimeout,2));
		outputStream.write(str2bcd(headermap.get("CorrelationID"), true, corid,14));
		outputStream.write(str2bcd(headermap.get("ExtendedHeader"), true, extheader,14));
		byte[]tpdu = outputStream.toByteArray();	
		return tpdu;
				
	}
	

	public static String  decodeHeader(byte[]tpdu,int offset, int len) {
		byte[] hdrelement=Arrays.copyOfRange(tpdu, offset, offset+len);
		String value= bcd2str(hdrelement,0,len*2,true);
		String element_to_decode=value.replaceFirst("^0+(?!$)", "");
		return element_to_decode;
		
	}
	

	
	 public static  String bcd2str(byte[] b, int offset, int len, boolean padLeft)
      {
     StringBuilder d = new StringBuilder(len);
     int start = (len & 1) == 1 && padLeft ? 1 : 0;
     for (int i=start; i < len+start; i++) {
       int shift = (i & 1) == 1 ? 0 : 4;
      char c = Character.forDigit (b[offset+ (i>>1)] >> shift & 0x0F, 16);
       if (c == 'd')
         c = '=';
         d.append (Character.toUpperCase (c));
       }
    return d.toString();
   }
	 
	 
	public static byte[] str2bcd(String s, boolean padLeft, byte[] d, int offset) {
        int len = s.length();
        int start = (len & 1) == 1 && padLeft ? 1 : 0;
        for (int i=start; i < len+start; i++) 
            d [offset + (i >> 1)] |= s.charAt(i-start)-'0' << ((i & 1) == 1 ? 0 : 4);
        return d;
    }
	
	


}
