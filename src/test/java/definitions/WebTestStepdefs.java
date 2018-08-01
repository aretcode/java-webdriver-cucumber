package definitions;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import support.TestContext;

import static support.TestContext.getDriver;

public class WebTestStepdefs {
    @Given("^I go to \"([^\"]*)\" page and print details$")
    public void iGoToPageAndPrintDetails(String arg0) throws Throwable {
        getDriver().get("http://skryabin.com/webdriver/html/sample.html");
//        getDriver().navigate().to("http://skryabin.com/webdriver/html/sample.html");
        System.out.println(TestContext.getDriver().getCurrentUrl());
        System.out.println(getDriver());
        System.out.println(getDriver().getTitle());
        System.out.println(getDriver().getWindowHandle());
        System.out.println();
    }
}
