@student_account
  Feature: Validation fields when create Student account


    Background: Input data into all fields

      Given I open url "http://local.school.portnov.com:4520/#/registration"
      Then element with xpath "//*[contains(text(),'Registration')]" should be present
      * I type "Vasya" into element with xpath "//*[@formcontrolname ='firstName']"
      * I type "Smirnov" into element with xpath "//*[@formcontrolname='lastName']"
      * I type "14434@com" into element with xpath "//*[@formcontrolname='email']"
      * I type "A007" into element with xpath "//*[@formcontrolname='group']"
      * I type "12345" into element with xpath "//*[@formcontrolname='password']"
      * I type "12345" into element with xpath "//*[@formcontrolname='confirmPassword']"

    @student_account_1

    Scenario Outline: First Name field validation positive
      Given I clear element with xpath "//*[@formcontrolname ='firstName']"
      When I type "<data>" into element with xpath "//*[@formcontrolname ='firstName']"
      Then  element with xpath "//*[@formcontrolname ='firstName']/../../..//*[contains(text(),'This field is required')]" should not be present
      Examples:
        | data |
        | k    |
        | Aa1$# |
        | 0123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789 |


    @student_account_2
    Scenario: First Name empty field negative
      Given I clear element with xpath "//*[@formcontrolname ='firstName']"
      And I click on element with xpath "//*[@formcontrolname ='firstName']"
      When I click on element with xpath "//*[@formcontrolname='lastName']"
      And I wait for 60 sec
      Then  element with xpath "//*[@formcontrolname ='firstName']/../../..//*[contains(text(),'This field is required')]" should be present


    @student_account_3
    Scenario: First Name whitespace field negative
      Given I clear element with xpath "//*[@formcontrolname ='firstName']"
      Then  element with xpath "//*[@formcontrolname ='firstName']/../../..//*[contains(text(),'Whitespaces are not allowed')]" should be present





