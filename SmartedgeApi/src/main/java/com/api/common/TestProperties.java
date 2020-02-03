package com.api.common;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import com.api.common.TestProperties;

public class TestProperties {
	public final static Properties props = new Properties();
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



	static {
		try (InputStream input = new FileInputStream("./src/test/resources/test.properties")) {
			props.load(input);
			} catch (IOException e) {
					e.printStackTrace();
		}
	}


	public static String getPropertyValue(String key) {
		return props.getProperty(key);
	}
	
	public static int getPropertyIntValue(String key) {
		return Integer.parseInt( props.getProperty(key));
	}
	
//	public static int getPropertyIntValue(String key, int defaultValue) {
//		if(prop.getProperty(key) != null && prop.getProperty(key).trim().length() != 0) {
//		   return Integer.parseInt( prop.getProperty(key));
//		}else {
//			return defaultValue;
//		}
//	}

	public String getReportConfigPath(){
		  String reportConfigPath = props.getProperty("reportconfigpath");
		 if(reportConfigPath!= null) return reportConfigPath;
		 else throw new RuntimeException("Report Config Path not specified in the Configuration.properties file for the Key:reportConfigPath"); 
		}
	
}
