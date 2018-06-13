Feature: Basic Authentication


  Scenario: User with valid credentials can login
    Given I open url "http://ask-stage.portnov.com/#/login"
    Then I should see page title as "Assessment Control @ Portnov"
    When I login with a "admin" username and "admin" password
    Then element with xpath "<string>" should not be displayed