Feature: Webdriver functions

  @webdriver1
  Scenario: Open the page
    Given I open url "http://ask-stage.portnov.com/#/login"
    Given I go to "google" page and print details
    And I go to "ask.portnov" page and print details
#   And  I go back and forward, then refresh the page
#    And I prints logs to the console