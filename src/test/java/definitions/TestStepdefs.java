//package definitions;
//
//import cucumber.api.PendingException;
//import cucumber.api.java.en.Given;
//import cucumber.api.java8.En;
//import support.TestContext;
//import static support.TestContext.getDriver;
//
//public class TestStepdefs implements En {
//
//        @Given("^I go to \"([^\"]*)\" page and print details$")
//    public void iGoToPageAndPrintDetails(String page) throws Throwable {
//           if (page.equals("google")){
//                TestContext.getDriver().get("https://www.google.com/");
//
//            }else if (page.equals("ask.portnov")){
//               getDriver().get("http://ask-stage.portnov.com/");
//
//           }
//            System.out.println(getDriver().getCurrentUrl());
//            System.out.println(getDriver().getTitle());
//            System.out.println(getDriver().getWindowHandle());
//        }
//    }

