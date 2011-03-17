Feature: Rake task
   In order to ease the development process
   As a developer and CI server administrator
   Cucumber features should be executable via Rake

  Scenario: rake task with a defined profile
    Given the following profile is defined:
    """
    foo: --quiet --no-color features/missing_step_definitions.feature:3
    """
    And a file named "Rakefile" with:
    """
    $LOAD_PATH.unshift(CUCUMBER_LIB)
    require 'cucumber/rake/task'

    Cucumber::Rake::Task.new(:features) do |t|
      t.profile = "foo"
    end
    """
    When I successfully run "rake features"
    Then I should see:
    """
    Feature: Sample

      Scenario: Wanted
        Given I want to run this

    1 scenario
    1 undefined step
    """
    And I should not see "undefined step"

