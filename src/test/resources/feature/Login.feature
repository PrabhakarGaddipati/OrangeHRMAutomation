Feature: Login functionality tests
  
  Here we will test all login related functionality
  We will not cover negative
  Tested by - Chirag

  Background: 
    Given user open the website
    Then verify login page is displayed

  @positive @smoke
  Scenario: Verify login successful with valid cred
    When user login with username "valid.username" and password "valid.password"
    Then verify login is successful

  @negative @smoke
  Scenario: Verify login unsuccessful with invalid cred
    When user login with username "invalid.username" and password "invalid.password"
    Then verify login is unsuccessful
    Then verify login page is displayed
