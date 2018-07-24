package definitions;

import cucumber.api.PendingException;
import cucumber.api.java.en.Then;
import cucumber.api.java8.En;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.fail;
import static support.TestContext.getDriver;

public class RevertToBackNikita{

    @Then("^Revert to back \"([^\"]*)\" old \"([^\"]*)\" new1 \"([^\"]*)\"$")
    public void revertToBackOldNew(String arg0, String old, String new1) {
        ExtraStepsByNikita.iClickOnElementWithXpath("//h5[contains(text(),'Setting')]");
        ExtraStepsByNikita.iClickOnElementWithXpath("//span[contains(text(),'Change Your Password')]");
        ExtraStepsByNikita.iTypeIntoElementWithXpath(old,"//input[@placeholder='Password']");
        ExtraStepsByNikita.iTypeIntoElementWithXpath(new1,"//input[@placeholder='New Password']");
        ExtraStepsByNikita.iTypeIntoElementWithXpath(new1,"//input[@placeholder='Confirm New Password']");
        ExtraStepsByNikita.iClickOnElementWithXpath("(//button[@aria-label])[2]");
    }
}
