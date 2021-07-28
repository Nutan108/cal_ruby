Feature: cal test
  Scenario: cal loan amount testing
    Given  i am in cal page
    When  I enter loan amount in cal page
  And  i enter loan term
    And i enter interest rate
    And i enter compound
    And  i enter pay back rate
    And i click calculate button
    Then  chk the result