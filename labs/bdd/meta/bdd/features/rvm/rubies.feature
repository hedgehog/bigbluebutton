Feature: RVM Rubies used in BigBlueButton
  In order that BigBlueButton BDD not be impeded
  As a BigBlueButton BDD developer
  I should be able to use whichever Ruby implementation suits me.

  Scenario Outline: The RVM Rubies used by .rvmrc scripts
    Given the rvmrc script is in "<sub_directory>"
    Then the Ruby implmentation should be "<ruby>"
  Examples:
    | sub_directory           | ruby                  |
    | ./labs/bdd/             | ruby-1.9.2-p136       |
    | ./labs/bdd/application/ | ruby-1.9.2-p136       |
    | ./labs/bdd/meta/bdd/    | ruby-1.9.2-p136       |
    | ./labs/bdd/system/      | ruby-1.9.2-p136       |
    | ./labs/bdd/system/os/   | ruby-1.9.2-p136       |
    | ./labs/vm/chefserver/   | ruby-1.9.2-p136       |
    | ./labs/vm/development/  | ruby-1.9.2-p136       |


