package com.api.common;

import java.io.IOException;
import java.util.Properties;

import org.jpos.core.SimpleConfiguration;
import org.jpos.iso.ISOException;
import org.jpos.iso.SunJSSESocketFactory;
import org.jpos.iso.channel.NCCChannel;

public class SSLConfiguration {
	
	public static SimpleConfiguration clientConfiguration() {
        Properties props = new Properties();
        props.put("keystore", "/opt/CucumberConcept/keys/mykeystore.jks");
        props.put("serverauth", "false");
        props.put("storepassword", "changeit");
        props.put("keypassword", "changeit");
        props.put("addEnabledCipherSuite", "SSL_RSA_WITH_3DES_EDE_CBC_SHA");
        props.put("timeout", "60000");
        props.put("connect-timeout", "0");
        props.put("receive-timeout", "0");
        props.put("acquirer-interface", "192.168.15.7");

        return new SimpleConfiguration(props);
    }


    public static NCCChannel newClientChannel() throws IOException, ISOException {
    	byte[] tpdu = {3,0,0,1,0,0,1,18,52,86,0,0,17,0,0,0,0,0,1,0,0,16,0,0,0,0,
			    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 };
        NCCChannel clientChannel = new NCCChannel(new SEISOB93Packager(),tpdu);
        clientChannel.setSocketFactory(new SunJSSESocketFactory());
        clientChannel.setConfiguration(clientConfiguration());
        return clientChannel;
    }
    
    
}
