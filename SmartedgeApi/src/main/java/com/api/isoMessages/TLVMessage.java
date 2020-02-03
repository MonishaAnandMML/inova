package com.api.isoMessages;

import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

public class TLVMessage {

		private byte[] message = null;

		public void append(int tag, int value,boolean fixed) {
			byte[] tagBCD = toBCD(tag, 2);
			byte[] valueBCD =toBCD(value, 0);
			byte[] lenBCD = toBCD(valueBCD.length, 0);
			byte[] m = new byte[tagBCD.length + valueBCD.length + lenBCD.length];
			System.arraycopy(tagBCD, 0, m, 0, tagBCD.length);
			System.arraycopy(lenBCD, 0, m, tagBCD.length, lenBCD.length);
			System.arraycopy(valueBCD, 0, m, tagBCD.length + lenBCD.length,
					valueBCD.length);
			append(m);
		}

		private void append(byte[] m) {
			if (message == null) {
				message = m;
			} else {
				byte[] newM = new byte[message.length + m.length];
				System.arraycopy(message, 0, newM, 0, message.length);
				System.arraycopy(m, 0, newM, message.length, m.length);
				message = newM;
			}
		}

		/*
		 * Appending tag and value after converting tag to BCD and value to Bytes
		 * This method appends to existing message bytes with tag in BCD, value
		 * length in BCD and value in bytes
		 */
		public void append(int tag, String value) throws Exception {

			// Converting tag to BCD. Making it 2 bytes
			byte[] tagBCD = toBCD(tag, 2);
			// Getting value in bytes
			byte[] valueb = value.getBytes("utf-8");
			// Getting the value length in BCD
			byte[] lenBCD = toBCD(valueb.length, 0);
			byte[] m = new byte[tagBCD.length + valueb.length];
			// Append tag BCD, length BCD and value
			System.arraycopy(tagBCD, 0, m, 0, tagBCD.length);
			//System.arraycopy(lenBCD, 0, m, tagBCD.length, lenBCD.length);
			// m[tagBCD.length] = valueLen;
			System.arraycopy(valueb, 0, m, tagBCD.length,
					valueb.length);
			append(m);
		}
		
		public void append(int tag, String value, boolean fixed) throws Exception {
           if (!fixed) {
			// Converting tag to BCD. Making it 2 bytes
			byte[] tagBCD = toBCD(tag, 2);
			// Getting value in bytes
			byte[] valueb = value.getBytes("utf-8");
			// Getting the value length in BCD
			byte[] lenBCD = toBCD(valueb.length, 0);
			byte[] m = new byte[tagBCD.length + lenBCD.length + valueb.length];
			// Append tag BCD, length BCD and value
			System.arraycopy(tagBCD, 0, m, 0, tagBCD.length);
			System.arraycopy(lenBCD, 0, m, tagBCD.length, lenBCD.length);
			System.arraycopy(valueb, 0, m, tagBCD.length + lenBCD.length,
					valueb.length);
			append(m);
           }
		}

		
		public void append(int tag, int length, int value) throws Exception {

			// Converting tag to BCD. Making it 2 bytes
			byte[] tagBCD = toBCD(tag, 2);
			// Getting value in bytes
			byte[] valueb = toBCD(value, length);
			// Getting the value length in BCD
			//byte[] lenBCD = toBCD(valueb.length, 0);
			byte[] m = new byte[tagBCD.length + valueb.length];
			// Append tag BCD, length BCD and value
			System.arraycopy(tagBCD, 0, m, 0, tagBCD.length);
			//System.arraycopy(lenBCD, 0, m, tagBCD.length, lenBCD.length);
			// m[tagBCD.length] = valueLen;
			System.arraycopy(valueb, 0, m, tagBCD.length,
					valueb.length);
			append(m);
		}

		private byte[] toBCD(int num, int bytes) {
			int digits = 0;

			int temp = num;
			while (temp != 0) {
				digits++;
				temp /= 10;
			}

			int byteLen = bytes;
			if (byteLen == 0) {
				byteLen = digits % 2 == 0 ? digits / 2 : (digits + 1) / 2;
			}

			byte bcd[] = new byte[byteLen];

			for (int i = 0; i < digits; i++) {
				byte tmp = (byte) (num % 10);

				if (i % 2 == 0) {
					bcd[i / 2] = tmp;
				} else {
					bcd[i / 2] |= (byte) (tmp << 4);
				}

				num /= 10;
			}

			for (int i = 0; i < byteLen / 2; i++) {
				byte tmp = bcd[i];
				bcd[i] = bcd[byteLen - i - 1];
				bcd[byteLen - i - 1] = tmp;
			}

			return bcd;
		}

		public byte[] getMesssage() {

			/*
			 * byte[] messageLenBCD = toBCD(message.length,2);
			 * 
			 * System.out.println(message.length); byte [] m = new
			 * byte[message.length + messageLenBCD.length];
			 * 
			 * System.arraycopy(messageLenBCD, 0, m, 0, messageLenBCD.length);
			 * System.arraycopy(message, 0, m, messageLenBCD.length,
			 * message.length); System.out.println(getString(m));
			 * System.out.println(ISOUtil.hexdump(m));
			 */

			// byte len
			// return m;
			return message;
		}
		
			public static String getValue(byte[] tlv,String tagvalue) throws UnsupportedEncodingException {
				ByteArrayInputStream bis= new ByteArrayInputStream(tlv);
				System.out.println("field 48 is "+Arrays.toString(tlv));
				String tlvval= null;
				int i=0;
				while((i+3)<tlv.length) {
					byte[] tag = Arrays.copyOfRange(tlv, i+1, i+2);
					byte[] len=  Arrays.copyOfRange(tlv, i+2, i+3);
					String tag_val = bcd2str(tag,0,2, true);
					String len_val = bcd2str(len,0,2, true);
					byte[] value = Arrays.copyOfRange(tlv,i+3,(i+3)+Integer.parseInt(len_val));
					tlvval=new String(value,"UTF-8");
					if(tag_val.equals(tagvalue)) {
						break;
					}
					i=i+3+Integer.parseInt(len_val);
					}
				
			    return tlvval;
			}
		
		private String getString(byte[] bytes) {
			String messageStatusString = "";
			for (Byte bt : bytes) {
				messageStatusString = messageStatusString + bt + ",";
			}
			return messageStatusString;

		}

		
		 public static String bcd2str(byte[] b, int offset, int len, boolean padLeft) 
{ 
 StringBuilder d = new StringBuilder(len); 
 int start = (len & 1) == 1 && padLeft ? 1 : 0; 
 for (int i=start; i < len+start; i++) { 
     int shift = (i & 1) == 1 ? 0 : 4; 
     char c = Character.forDigit ( 
             b[offset+ (i>>1)] >> shift & 0x0F, 16); 
     if (c == 'd') 
         c = '='; 
     d.append (Character.toUpperCase (c)); 
 } 
 return d.toString(); 
} 
		public static void main(String[] str) throws Exception {
			byte[] tlv = {0,1,35,1,35,24,53,18,25,49,(byte)150,0,0,69,121,0,23,4,51,55,48,48,8,(byte)64};
			//TLVMessage.getValue(tlv);
			
			

		}

	}


