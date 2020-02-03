package com.api.common;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import com.api.common.TestProperties;

public class TestProperties {

	private static Properties prop;
	
	public static String ACQUIRER_PORT = "acquirer_port";
	public static String LOG_FILE = "log_file";
	public static String SQLITE_DATABASE = "sqlite_database";
	public static String ACQUIRER_IP = "acquirer_ip";
	public static String ACQUIRER_ENDPOINT = "acquirer_endpoint";
	public static String ACQUIRER_FASTPOS_ENDPOINT = "acquirer_fastpos_endpoint";
	public static String HTTP_REST_API_PORT = "http_rest_api_port";
	public static String HTTPS_REST_API_PORT = "https_rest_api_port";
	public static String TEST_OUTPUT_DIR = "output_dir";
	public static String ISSUER_PORT = "issuer_port";
	public static String SE_SERVICES_PORT = "se_services_port";
	public static String SE_SERVICES_HOSTNAME = "se_services_hostname";
	public static String LOG_DIR = "log_dir";
	public static String TIMEOUT = "Timeout";
	public static String TIMEOUT_LateResponse = "Timeout_IssuerLateResponse";
	public static String REPORTPATH = "reportconfigpath";
	//Issuer Endpoint
	public static String ISSUER1 = "ABCIssuer1";
	public static String ISSUER1_Pin = "ABCIssuer1_Pin";
	public static String ISSUER1_Atm = "ABCIssuer1_ATM";
	public static String ISSUER2 = "XYZIssuer1";
	public static String ISSUER3 = "XYZIssuer2";
	public static String ISSUER4 = "PQRIssuer1";
	public static String ISSUER4_Pin = "PQRIssuer1_Pin";
	public static String ISSUER5 = "BOAIssuer1";
	public static String ISSUER5_Pin_1 = "BOAIssuer1_Pin_1";
	public static String ISSUER6_1 ="BOAIssuer2_1";
	public static String ISSUER6_2 ="BOAIssuer2_2";
	public static String ISSUER5_Pin_2 ="BOAIssuer1_Pin_2";
	
	//Issuer_AccRange
	public static String ISSUER1_Range = "ABCIssuer1_Range";
	public static String ISSUER2_Range = "XYZIssuer1_Range";
	public static String ISSUER3_Range = "XYZIssuer2_Range";
	public static String ISSUER4_Range = "PQRIssuer1_Range";
	public static String ISSUER5_Range = "BOAIssuer1_Range";
	public static String ISSUER6_Range = "BOAIssuer2_Range";
	
	//Issuer Priority
	public static String XYZIssuer1_Priority = "XYZIssuer1_Priority";
	public static String XYZIssuer2_Priority = "XYZIssuer2_Priority";
	public static String BOAIssuer1_Priority = "BOAIssuer1_Priority";
	public static String BOAIssuer2_Priority = "BOAIssuer2_Priority";
	
	public static String Acquirer1_IP= "Acquirer1_ip";
	public static String Acquirer2_IP ="Acquirer2_ip";
	public static String Acquirer1_fwdroute_IP ="Acquirer1_fwdroute_IP";
	public static String Acquirer1_IDCode= "Acquirer1_IDCode";
	public static String Acquirer2_IDCode= "Acquirer2_IDCode";
	public static String Acquirer1_fwdroute_IDCode="Acquirer1_fwdroute_IDCode";
	public static String Acquirer1_endpoint="Acquirer1_endpoint";
	public static String Acquirer2_endpoint="Acquirer2_endpoint";
	public static String Acquirer1_fwdroute_endpoint="Acquirer1_fwdroute_endpoint";
		

	static {
		InputStream is = null;
		try {
			prop = new Properties();
			is = TestProperties.class
					.getResourceAsStream("/test.properties");
			prop.load(is);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static String getPropertyValue(String key) {
		return prop.getProperty(key);
	}
	
	public static int getPropertyIntValue(String key) {
		return Integer.parseInt( prop.getProperty(key));
	}
	
	public static int getPropertyIntValue(String key, int defaultValue) {
		if(prop.getProperty(key) != null && prop.getProperty(key).trim().length() != 0) {
		   return Integer.parseInt( prop.getProperty(key));
		}else {
			return defaultValue;
		}
	}

	public String getReportConfigPath(){
		 String reportConfigPath = TestProperties.getPropertyValue(TestProperties.REPORTPATH);
		 if(reportConfigPath!= null) return reportConfigPath;
		 else throw new RuntimeException("Report Config Path not specified in the Configuration.properties file for the Key:reportConfigPath"); 
		}
	public static void main(String a[]) {

		System.out.println("db.host: " + getPropertyValue(TEST_OUTPUT_DIR));
	}
	
}
