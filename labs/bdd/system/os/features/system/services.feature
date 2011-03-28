Feature: system
  It should be up

  Scenario: Visiting home page
    When I go to http://system
    Then the request should succeed

