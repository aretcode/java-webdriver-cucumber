package googleTest;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Parameters;

public class Start {

	public static WebDriver driver = null;
	
	@BeforeTest
	@Parameters("setBrowser")
	public void setbrowser(String setBrowser) {
		if(setBrowser.equalsIgnoreCase("Chrome")) {
			System.setProperty("webdriver.chrome.driver", "D:/MyDoc/automation/java-webdriver-testng-maven/drivers/chromedriver.exe");
	 		System.out.println("Initialization Chrome.");
			driver = new ChromeDriver();
		}
		else if(setBrowser.equalsIgnoreCase("Firefox")) {
			System.setProperty("webdriver.firefox.driver", "D:/MyDoc/automation/java-webdriver-testng-maven/drivers/geckodriver.exe");
	 		System.out.println("Initialization Firefox.");
			driver = new FirefoxDriver();
		}
		else{
	 		System.out.println("Wrong parameter. Must input 'Chrome' or 'Firefox'!");
		}
		int implicitlyWait = 2; 		
 		driver.manage().timeouts().implicitlyWait(implicitlyWait, TimeUnit.SECONDS);
 		System.out.println("Time-weit between the tests: "+implicitlyWait);
 		System.out.println("Browser Opened.");
	}
		
	@AfterTest
	public void CloseBrowser() {
  		driver.manage().deleteAllCookies();
		driver.quit();
	    System.out.println("Finish Test Suite.");

	}
}
