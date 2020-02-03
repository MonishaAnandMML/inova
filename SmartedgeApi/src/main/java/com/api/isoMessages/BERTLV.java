package com.api.isoMessages;
import java.util.*;
public class BERTLV {

	    private static List<Integer> list2 = new ArrayList<Integer>();
	    
	    public static void main(String[] args)
	    {
	    	
	        Scanner in = new Scanner(System.in);
	        
	        System.out.print("Enter the Tag value  :");
	        String tag = in.nextLine();
	        System.out.print("Enter the value: ");
	        String value=in.nextLine();
	        System.out.print("Tag value is :"+ tag);
	        System.out.print("\nValue is:"+ value);
	         int valuelen=value.length();
	         int len=valuelen/2;
	         System.out.println("\nlength of the value is"+ len);
	      List<Integer> bertlvlist = new ArrayList<Integer>();
	      bertlvlist.addAll(hextodec(tag));
	      bertlvlist.add(calculation(len));
	      bertlvlist.addAll(hextodec(value));
	      System.out.println("\n After convert hexto dec bertlvlist is :"+bertlvlist);
	    }
	        
	       

	    public static List<Integer> hextodec(String tag)
	       {
	        int j=2,N=0;
	        int decimal;
	       List<Integer> list1 = new ArrayList<Integer>();
	        while(j<=tag.length())
	         {
	          String twochar=tag.substring(N, j);
	           N=j;
	           j=j+2;
	            
	             System.out.println("\nTaking two character"+':'+ twochar);
	               decimal = Integer.parseInt(twochar, 16);
	               list1.add(decimal);
	               System.out.println(list1);
	               
	                //Converting hexa decimal number to binary in Java      
	                String binary = Integer.toBinaryString(decimal);
	                
	              System.out.printf("Hexadecimal to Binary conversion of %s is %s %n", twochar, binary );
	         }
	         return list1;
	       }       
	        public static Integer calculation(int len) 
	        {
	            switch(len/128)
	            {
	            case 0:System.out.println("length value"+len); 
	                  break;
	            case 1:int n1=129;
	                String concat = Integer.toString(n1) + Integer.toString(len);
	                len = Integer.parseInt(concat);
	                break;
	            }
	            return len;
	        }
	} 