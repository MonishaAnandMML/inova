package com.api.isoMessages;
import java.io.Serializable;
import org.jpos.iso.ISOException;
import org.jpos.iso.ISOMsg;

public class MessageElements implements Serializable {
	private static final long serialVersionUID = 1L;
	private String RRN,MTI,PAN;
	private boolean isPinData;

	public MessageElements() {
		
	}
	public void setRRN(ISOMsg m) {
		this.RRN= m.getString(37);
	}
	
	public void setMTI(ISOMsg m) throws ISOException {
		this.MTI=m.getMTI();

     }
	public void setCardNum(ISOMsg m) throws ISOException {
		this.PAN=m.getString(2);

     }

	public String getMTI() {
		return MTI;
	}
	
	public String getRRN() {
		return RRN;
	}

	
	public String getPAN() {
		return PAN;
	}
	
	public boolean chkPin(ISOMsg m) {
		String pindata= m.getString(52);
		if(!(pindata==null))
			isPinData=true;
		return isPinData;
	}

}
