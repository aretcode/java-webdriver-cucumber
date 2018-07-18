package googleTest;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;
import org.testng.annotations.Parameters;
import org.testng.annotations.Test;

import pageObjects.GoogleSearchPage;

public class Google extends Start {
	
	WebDriver driver;
	
	@Test
	public void Verify_that_the_Google_Search_Page_is_opened() {
		GoogleSearchPage GSP = PageFactory.initElements(driver, GoogleSearchPage.class);
		GSP.getURL();
		GSP.validatePage();
	}

	@Parameters("inputData")
	@Test
	public void Verify_that_user_can_retrive_result_after_inputed_data_into_Search_field(String inputData) {
		GoogleSearchPage GSP = PageFactory.initElements(driver, GoogleSearchPage.class);
		GSP.inputDataIntoSearchField(inputData);
		GSP.validateResult();
	}
	
	@Test
	public void Verify_that_user_can_come_back_to_the_start_page() {
		GoogleSearchPage GSP = PageFactory.initElements(driver, GoogleSearchPage.class);
		GSP.clickBack();
		GSP.validatePage();
	}
}
