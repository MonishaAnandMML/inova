package com.api.common;

import java.io.PrintStream;

import org.jpos.util.Logger;
import org.jpos.util.SimpleLogListener;
import org.jpos.util.SimpleLogSource;

public class LoggerUtil {

	private static SimpleLogSource logSource = null;

	private static SimpleLogSource getLogger() throws Exception {
		if (logSource == null) {
			Logger logger = new Logger();
			logger.addListener(new SimpleLogListener(new PrintStream(
					TestProperties.getPropertyValue(TestProperties.LOG_FILE))));
			logSource = new SimpleLogSource(logger, "generic");
		}
		return logSource;
	}

	public static void info(Class cls, String message) {
		try {
			getLogger().info("[" + cls.getName() + "]" + message);
		} catch (Exception e) {

		}
	}
	
	public static void error(Class cls, String message) {
		try {
			getLogger().error("[" + cls.getName() + "]" + message);
		} catch (Exception e) {

		}
	}

}
