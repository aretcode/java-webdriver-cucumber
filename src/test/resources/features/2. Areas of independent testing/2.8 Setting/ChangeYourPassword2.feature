@Area_of_independent_testing
Feature: 2.8.2 Change your password

#########################################################################################################
#
#  This file was created by Nikitos
#
#########################################################################################################
  Background: Login
    Given I open url "http://local.school.portnov.com:4520/#/login"
    When I type "nikita_student1@amail.club" into element with xpath "//input[@formcontrolname='email']"
    When I type "0123456789" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
#########################################################################################################

  @Area_of_independent_testing @Teacher @Student
  Scenario: User can change password
    Then I click on element with xpath "//h5[contains(text(),'Setting')]"
    Then I click on element with xpath "//span[contains(text(),'Change Your Password')]"
    When I type "0123456789" into element with xpath "//input[@placeholder='Password']"
    When I type "9876543210" into element with xpath "//input[@placeholder='New Password']"
    When I type "9876543210" into element with xpath "//input[@placeholder='Confirm New Password']"
    Then I click on element with xpath "//*[contains(text(),'Change')]/..//button[@color='primary']"
    Then I click on element with xpath "//h5[contains(text(),'Log Out')]"
    Then I click on element with xpath "//h5[contains(text(),'//button[@color='warn']')]"
    When I type "nikita_teacher@amail.club" into element with xpath "//input[@formcontrolname='email']"
    When I type "9876543210" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I should see page title as "//"

  @Area_of_independent_testing @Teacher @Student
  Scenario: Input 4 characters in password field
    Then I click on element with xpath "//h5[contains(text(),'Setting')]"
    Then I click on element with xpath "//span[contains(text(),'Change Your Password')]"
    When I type "9876543210" into element with xpath "//input[@placeholder='Password']"
    When I type "9876" into element with xpath "//input[@placeholder='New Password']"
    When I type "9876" into element with xpath "//input[@placeholder='Confirm New Password']"
    Then I click on element with xpath "//*[contains(text(),'Change')]/..//button[@color='primary']"
    Then element with xpath "<string>" should contain text "<string>"


  @Area_of_independent_testing @Teacher @Student
  Scenario: Input max characters in password field
    Then I click on element with xpath "//h5[contains(text(),'Setting')]"
    Then I click on element with xpath "//span[contains(text(),'Change Your Password')]"
    When I type "9876543210" into element with xpath "//input[@placeholder='Password']"
    When I type "01234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567" into element with xpath "//input[@placeholder='New Password']"
    When I type "01234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567" into element with xpath "//input[@placeholder='Confirm New Password']"
    Then I click on element with xpath "//*[contains(text(),'Change')]/..//button[@color='primary']"
    Then I click on element with xpath "//h5[contains(text(),'Log Out')]"
    Then I click on element with xpath "//h5[contains(text(),'//button[@color='warn']')]"
    When I type "nikita_teacher@amail.club" into element with xpath "//input[@formcontrolname='email']"
    When I type "01234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I should see page title as "//"

  @Area_of_independent_testing @Teacher @Student
  Scenario: Password field displays input in bullets
    Then I click on element with xpath "//h5[contains(text(),'Setting')]"
    Then I click on element with xpath "//span[contains(text(),'Change Your Password')]"
    Then element with xpath "//input[@placeholder='Password' and @type='password']" should be enabled
    Then element with xpath "//input[@placeholder='New Password' and @type='password']" should be enabled
    Then element with xpath "//input[@placeholder='Confirm New Password' and @type='password']" should be enabled

  @Area_of_independent_testing @Teacher @Student
  Scenario: "Cut" menu item on "Password" field is disabled
    Then I click on element with xpath "//h5[contains(text(),'Setting')]"
    Then I click on element with xpath "//span[contains(text(),'Change Your Password')]"
    When I type "01234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567" into element with xpath "//input[@placeholder='Password']"
    Then I Cut inputed data from field with xpath "//input[@placeholder='Password']"
    When I type "0123456789" into element with xpath "//input[@placeholder='New Password']"
    Then I Cut inputed data from field with xpath "//input[@placeholder='New Password']"
    When I type "0123456789" into element with xpath "//input[@placeholder='Confirm New Password']"
    Then I Cut inputed data from field with xpath "//input[@placeholder='Confirm New Password']"
    Then I click on element with xpath "//button[@type='submit']"


  @Area_of_independent_testing @Teacher @Student
  Scenario: "Copy" menu item on "Passwosd" field is disabled
    Then I click on element with xpath "//h5[contains(text(),'Setting')]"
    Then I click on element with xpath "//span[contains(text(),'Change Your Password')]"
    When I type "0123456789" into element with xpath "//input[@placeholder='Password']"
    Then I verify that got value from the field with xpath "//input[@placeholder='Password']" is equal to ""
#    Then I Copy inputed data from field with xpath "//input[@placeholder='Password']"
    When I type "0123456789" into element with xpath "//input[@placeholder='New Password']"
    Then I verify that got value from the field with xpath "//input[@placeholder='New Password']" is equal to ""
#    Then I Copy inputed data from field with xpath "//input[@placeholder='New Password']"
    When I type "0123456789" into element with xpath "//input[@placeholder='Confirm New Password']"
    Then I verify that got value from the field with xpath "//input[@placeholder='Confirm New Password']" is equal to ""
#    Then I Copy inputed data from field with xpath "//input[@placeholder='Confirm New Password']"

  @Area_of_independent_testing @Teacher @Student
  Scenario: "Verify user can create password with spesial characters"
    Then I click on element with xpath "//h5[contains(text(),'Setting')]"
    Then I click on element with xpath "//span[contains(text(),'Change Your Password')]"
    When I type "0123456789" into element with xpath "//input[@placeholder='Password']"
    When I type "@#%#%#@%^*" into element with xpath "//input[@placeholder='New Password']"
    When I type "@#%#%#@%^*" into element with xpath "//input[@placeholder='Confirm New Password']"
