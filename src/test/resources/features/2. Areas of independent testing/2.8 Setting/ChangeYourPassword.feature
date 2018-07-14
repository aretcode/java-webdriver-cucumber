#@predefined
#Feature: 2.8.2 Change your password
#
#  Background: Login
#    Given I open url "http://local.school.portnov.com:4520/#/login"
#    When I type "nikita_teacher@amail.club" into element with xpath "//input[@formcontrolname='email']"
#    When I type "0123456789" into element with xpath "//input[@formcontrolname='password']"
#    Then I click on element with xpath "//button[@type='submit']"
#
#  @predefined
#  Scenario: User can change password
#    Then I click on element with xpath "//span[contains(text(),'Change Your Name')]"
#    When I type "0123456789" into element with xpath "//input[@placeholder='Password']"
#    When I type "9876543210" into element with xpath "//input[@placeholder='New Password']"
#    When I type "9876543210" into element with xpath "//input[@placeholder='Confirm New Password']"
#    Then I click on element with xpath "//*[contains(text(),'Change')]/..//button[@color='primary']"
#    Then I click on element with xpath "//h5[contains(text(),'Log Out')]"
#    Then I click on element with xpath "//h5[contains(text(),'//button[@color='warn']')]"
#    When I type "nikita_teacher@amail.club" into element with xpath "//input[@formcontrolname='email']"
#    When I type "9876543210" into element with xpath "//input[@formcontrolname='password']"
#    Then I click on element with xpath "//button[@type='submit']"
#    Then I should see page title as "//"
#
#  @predefined
#  Scenario: Input 4 characters in password field
#    Then I click on element with xpath "//span[contains(text(),'Change Your Name')]"
#    When I type "9876543210" into element with xpath "//input[@placeholder='Password']"
#    When I type "9876" into element with xpath "//input[@placeholder='New Password']"
#    When I type "9876" into element with xpath "//input[@placeholder='Confirm New Password']"
#    Then I click on element with xpath "//*[contains(text(),'Change')]/..//button[@color='primary']"
#    Then element with xpath "<string>" should contain text "<string>"
#
#
#   @predefined
#   Scenario: Input max characters in password field
#     Then I click on element with xpath "//span[contains(text(),'Change Your Name')]"
#     When I type "9876543210" into element with xpath "//input[@placeholder='Password']"
#     When I type "01234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567" into element with xpath "//input[@placeholder='New Password']"
#     When I type "01234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567" into element with xpath "//input[@placeholder='Confirm New Password']"
#     Then I click on element with xpath "//*[contains(text(),'Change')]/..//button[@color='primary']"
#     Then I click on element with xpath "//h5[contains(text(),'Log Out')]"
#     Then I click on element with xpath "//h5[contains(text(),'//button[@color='warn']')]"
#     When I type "nikita_teacher@amail.club" into element with xpath "//input[@formcontrolname='email']"
#     When I type "01234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567" into element with xpath "//input[@formcontrolname='password']"
#     Then I click on element with xpath "//button[@type='submit']"
#     Then I should see page title as "//"
#
#   @predefined
#   Scenario: Password field displays input in bullets
#     Then I click on element with xpath "//span[contains(text(),'Change Your Name')]"
#     When I type "9876543210" into element with xpath "//input[@placeholder='Password']"
