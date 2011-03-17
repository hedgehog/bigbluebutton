Feature: cucumber
  It should be up

  Scenario: Visiting home page
    When I go to http://cucumber
    Then the request should succeed

