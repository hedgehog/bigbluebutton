Feature: BigBlueButton's BDD Features
  In order to understand and facilitate BDD   # Value proposition
  As a BigBlueButton BDD developer            # Role
  I can review the BigBlueButton project's BDD features # Feature

  Background:
    Given a BDD inclined BigBlueButton developer

  Scenario: Review BDD helper methods
    When a step becomes complex
    Then the method behavior is specified in the B3 gem
    And the contents are extracted to the B3 gem
    And a helper method name is added below
    And the implemented "B3::Bdd::Helpers" methods are:
     | name                  |
     | b3_rvm_path           |
     | b3_rvm_local_install? |

  Scenario: BDD of RVM .rvmrc scripts, rubies and gemsets

  Scenario: BDD of RVM rubies and gemsets

