package env;

import java.io.File;

import org.junit.AfterClass;
import org.junit.runner.RunWith;

import com.cucumber.listener.Reporter;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(features = { "src/test/resources/features/" }, plugin = {
"com.cucumber.listener.ExtentCucumberFormatter:target/html/report.html" }, glue = {



		"cucumber.features" }, tags = {"@VISAFCIF"}, dryRun = false, strict = false, monochrome = true)


public class RunCukeTest {

	@AfterClass
	public static void setup() {
		Reporter.loadXMLConfig(new File("src/test/resources/extent-config.xml"));
		Reporter.setSystemInfo("Test User", System.getProperty("user.name"));
		Reporter.setSystemInfo("Test User", "sancharee");
		Reporter.setSystemInfo("Operating System Type", System.getProperty("os.name").toString());
		Reporter.setSystemInfo("Application Name", "SmartEdge Platform Testing");
		// Reporter.setSystemInfo("Build version", "v 2.3");
		Reporter.setTestRunnerOutput("Cucumber reporting using Extent Config");
	}

}