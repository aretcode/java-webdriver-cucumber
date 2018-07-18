@Area_of_independent_testing
Feature: 2.8.3 Setting

#########################################################################################################
#  Background: Login
#    Given I open url "http://local.school.portnov.com:4520/#/login"
#    When I type "nikita_teacher@amail.club" into element with xpath "//input[@formcontrolname='email']"
#    When I type "0123456789" into element with xpath "//input[@formcontrolname='password']"
#    Then I click on element with xpath "//button[@type='submit']"
#########################################################################################################
#
#  This file was created by Nikitos
#
#########################################################################################################

  @Area_of_independent_testing @Teacher @Student
  Scenario: Veryfi user can push setting buttom
    Then I click on element with xpath "//h5[contains(text(),'Setting')]"
    Then element with xpath "//h4[contains(text(),'Settings')]" should contain text "Settings"

