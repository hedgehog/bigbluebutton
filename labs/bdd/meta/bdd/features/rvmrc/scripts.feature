Feature: RVM's .rvmrc script create and load required gemsets
  In order to use the Ruby Gems best suited to the task
  As a BigBlueButton developer
  RVM should load the required Ruby Gems when I change directory.

  Background:
    Given RVM is installed locally
    And the RVM API is available

  Scenario Outline: Enter a directory containing a .rvmrc script
    Given the rvmrc script is in "<sub_directory>"
    Then the gemset name should be "<gemset>"
  Examples:
    | sub_directory           | gemset                           |
    | ./labs/bdd/             | ruby-1.9.2-p136@bbb-bdd          |
    | ./labs/bdd/application/ | ruby-1.9.2-p136@bbb-bdd-app      |
    | ./labs/bdd/meta/bdd/    | ruby-1.9.2-p136@bbb-bdd-meta-bdd |
    | ./labs/bdd/system/      | ruby-1.9.2-p136@bbb-bdd-sys      |
    | ./labs/bdd/system/os/   | ruby-1.9.2-p136@bbb-bdd-sys-os   |
    | ./labs/vm/chefserver/   | ruby-1.9.2-p136@bbb-chefserver   |
    | ./labs/vm/development/  | ruby-1.9.2-p136@bbb-vm-dev       |
