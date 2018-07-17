package pageObjects;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class GoogleSearchPage {

	WebDriver driver;
	
	public GoogleSearchPage(WebDriver driver) {
		this.driver = driver;
	}
	
	@FindBy(how=How.XPATH, using="//input[@aria-label='Google Search']") WebElement GoogleSearchButton;
//	@FindBy(how=How.ID, using="gbqfbb") WebElement ImFeelingLuckyButton;
	@FindBy(how=How.XPATH, using="//input[@title='Search']") WebElement SearchField;
	@FindBy(how=How.ID, using="resultStats") WebElement ResultStats;

	public void getURL() {
		driver.get("https://www.google.com");
	}
	
	public void inputDataIntoSearchField(String inputData) {
		SearchField.sendKeys(inputData);
	}
	
	public void clickBack() {
		driver.navigate().back();
	}
	public void validateResult() {
		try {
			String value = ResultStats.getAttribute("value");
			if(value!=null) {
				System.out.println("Result is displayed"+ value);
			}
		}
		catch(Exception e) {
			System.out.println("Result is not displayed");
		}
	}

	public void validatePage() {
		try {
			boolean element1 = GoogleSearchButton.isDisplayed()/*,element2 = ImFeelingLuckyButton.isDisplayed()*/;
			if(element1==true /*& element2==true*/) {
				System.out.println("'Google Search' is found");
			}
//			else if(element1==false | element2==true) {
//				System.out.println("'Google Search' is not found");
//			}
//			else if(element1==true | element2==false) {
//				System.out.println("'I'm Feeling Lucky' is not found");
//			}
		}
		catch(Exception e) {
			System.out.println("'Google Search' not found");
		}
	}


	
	
}
