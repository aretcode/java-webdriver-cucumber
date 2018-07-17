@3._End-To-End_tests
Feature: Duplicate Email

#########################################################################################################
#
#  This file was created by Nikitos
#
#########################################################################################################

  @3._End-To-End_tests
  Scenario: "Cut" menu item on "Password" field is disabled
    When I open url "http://local.school.portnov.com:4520/#/login"
    Then I click on element with xpath "//span[contains(text(),'Register Now')]"
    Then I type "Nikita" into element with xpath "//input[@placeholder='First Name']"
    Then I type "Dovgich" into element with xpath "//input[@placeholder='Last Name']"
    Then I type "nikita_teacher@amail.club" into element with xpath "//input[@placeholder='Email']"
    Then I type "1111" into element with xpath "//input[@placeholder='Group Code']"
    Then I type "0123456789" into element with xpath "//input[@placeholder='Password']"
    Then I type "0123456789" into element with xpath "//input[@placeholder='Confirm Password']"
    Then element with xpath "//*[contains(text(),'User already exists and activated')]" should contain text "User already exists and activated"
