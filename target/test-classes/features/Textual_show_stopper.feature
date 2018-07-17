@predefined
Feature: Smoke steps

#  @predefined1
#  Scenario: Predefined steps for Google
#    Given I open url "https://google.com"
#    Then I should see page title as "Google"
#    Then element with xpath "//input[@name='q']" should be present
#    When I type "Java" ingitto element with xpath "//input[@name='q']"
#    Then I click on element using JavaScript with xpath "//*[@name='btnK']"
#    Then I wait for element with xpath "//*[@id='ires']" to be present
#    Then element with xpath "//*[@id='ires']" should contain text "Java"

#    @predefined2
#   Scenario: Forgot Password Happy Pass
#     Given I open url "http://local.school.portnov.com:4520/#/login"
#     Then I should see page title contains "Assessment Control @ Portnov"
#     Then element with xpath "//a[@href='/#/forgot-password']" should be present
#     Then I click on element using JavaScript with xpath "//a[@href='/#/forgot-password']"
#     Then element with xpath "//*[contains(text(),'Reset Password Request')]" should be present
#     Then I type "hilurih@shinnemo.com" into element with xpath "//input[@id='mat-input-2']"
#     Then I click on element using JavaScript with xpath "//div[@class='controls']//button[@color='primary']"
#
#
    @predefined3
  Scenario: Quiz with Textual question + Show Stopper
      Given I open url "http://local.school.portnov.com:4520/#/login"
      Then I should see page title contains "Assessment Control @ Portnov"
      Then element with xpath "//input[@id='mat-input-0']" should be present
      When I type "hilurih@shinnemo.com" into element with xpath "//input[@id='mat-input-0']"
      Then element with xpath "//input[@id='mat-input-1']" should be present
      When I type "12345" into element with xpath "//input[@id='mat-input-1']"
      And I click on element using JavaScript with xpath "//span[contains(text(),'Sign In')]"
      Then I wait for element with xpath "//*[@class='mat-line'][contains(text(),'Quizzes')]" to be present
      When I click on element using JavaScript with xpath "//*[@class='mat-line'][contains(text(),'Quizzes')]"
      Then I wait for element with xpath "//span[@class='mat-button-wrapper'][contains(text(),'Create New Quiz')]" to be present
      When I click on element using JavaScript with xpath "//span[@class='mat-button-wrapper'][contains(text(),'Create New Quiz')]"
      Then I wait for element with xpath "//input[@id='mat-input-2']" to be present
      When I type "Text+Stopper test" into element with xpath "//input[@id='mat-input-2']"
      And I click on element using JavaScript with xpath "//div[@class='controls ng-star-inserted']//button[@color='primary']"
      And I click on element using JavaScript with xpath "//*[contains(text(),'Textual')]/../..//*[contains(@id,'radio')]"
      And I type "12345" into element with xpath "//*[@formcontrolname='question']"
      And I click on element using JavaScript with xpath "//button//*[contains(text(),'Save')]"
      * I wait for element with xpath "//*[@class='quizzes']" to be present
      * element with xpath "//*[contains(text(),'Text+Stopper test')]" should be present
      * I click on element using JavaScript with xpath "//*[contains(text(),'Text+Stopper test')]"
      * I scroll down to the element with xpath "//*[contains(text(),'Text+Stopper test')]/../../..//*[contains(text(),'Delete')]"
      * I click on element with xpath "//*[contains(text(),'Text+Stopper test')]/../../..//*[contains(text(),'Delete')]"
      * element with xpath "//*[contains(text(),'want to DELETE whole')]/../..//*[contains(text(),'Delete')]" should be present
      * I click on element with xpath "//*[contains(text(),'want to DELETE whole')]/../..//*[contains(text(),'Delete')]"
      * I wait for 2 sec
      * element with xpath "//*[contains(text(),'Text+Stopper test')]" should not be present



        Given I open url "http://local.school.portnov.com:4520/#/registration"
        Then element with xpath "//*[contains(text(),'Registration')]" should be present
        * I type "Vasya" into element with xpath "//*[@formcontrolname ='firstName']"
        * I type "Smirnov" into element with xpath "//*[@formcontrolname='lastName']"
        * I type "14434@com" into element with xpath "//*[@formcontrolname='email']"
        * I type "A007" into element with xpath "//*[@formcontrolname='group']"
        * I type "12345" into element with xpath "//*[@formcontrolname='password']"
        * I type "12345" into element with xpath "//*[@formcontrolname='confirmPassword']"

    #Scenario: First Name field validation
        Given I clear element with xpath "//*[@formcontrolname ='firstName']"
        * I type "k" into element with xpath "//*[@formcontrolname ='firstName']"
        * element with xpath "//*[@formcontrolname ='firstName']/../../..//*[contains(text(),'field is required')]" should not be present
        * I wait for 10 sec

