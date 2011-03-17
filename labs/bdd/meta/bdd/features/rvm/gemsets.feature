Feature: RVM gemsets
  In order that .rvmrc scripts auto-install the Ruby Gems used in BigBlueButton
  As a BigBlueButton developer
  I should have a gems file in each .rvmrc folder.

  Scenario Outline: The of RVM gemsets used
    Given the rvmrc script is in "<sub_directory>"
    Then the gemset file name should be "<gems>"
  Examples:
    | sub_directory           | gems                  |
    | ./labs/bdd/             | bbb-bdd.gems          |
    | ./labs/bdd/application/ | bbb-bdd-app.gems      |
    | ./labs/bdd/meta/bdd/    | bbb-bdd-meta-bdd.gems |
    | ./labs/bdd/system/      | bbb-bdd-sys.gems      |
    | ./labs/bdd/system/os/   | bbb-bdd-sys-os.gems   |
    | ./labs/vm/chefserver/   | bbb-chefserver.gems   |
    | ./labs/vm/development/  | bbb-vm-dev.gems       |

  Scenario: The content of the bbb-bdd gemset
    Given the rvmrc script is in "./labs/bdd/"
    Then the gemset file "bbb-bdd.gems" should contain exactly:
    """
    # bbb-bdd.gems generated gem export file. Note that any env variable settings will be missing. Append these after using a ';' field separator

    """

  Scenario: The content of the bbb-bdd-app gemset
    Given the rvmrc script is in "./labs/bdd/application/"
    Then the gemset file "bbb-bdd-app.gems" should contain exactly:
    """
    # bbb-bdd-app.gems generated gem export file. Note that any env variable settings will be missing. Append these after using a ';' field separator
    abstract -v1.0.0
    activesupport -v3.0.4
    addressable -v2.2.4
    akephalos -v0.2.5
    amqp -v0.6.7
    archive-tar-minitar -v0.5.2
    arrayfields -v4.7.4
    builder -v3.0.0
    bundler -v1.0.10
    bunny -v0.6.0
    capybara -v0.4.1.2
    celerity -v0.8.8
    chef -v0.9.12
    childprocess -v0.1.7
    chronic -v0.3.0
    churn -v0.0.13
    colored -v1.2
    crack -v0.1.8
    cucumber -v0.10.0
    cucumber-nagios -v0.8.10
    culerity -v0.2.15
    diff-lcs -v1.1.2
    erubis -v2.6.6
    eventmachine -v0.12.10
    extlib -v0.9.15
    fattr -v2.2.0
    ffi -v1.0.6
    ffi -v0.6.3
    flay -v1.4.2
    flog -v2.5.1
    gherkin -v2.3.3
    git -v1.2.5
    haml -v3.0.25
    highline -v1.6.1
    hirb -v0.4.0
    i18n -v0.5.0
    jeweler -v1.5.2
    jruby-jars -v1.5.6
    json -v1.5.1
    json_pure -v1.5.1
    main -v4.4.0
    mario -v0.0.6
    mechanize -v1.0.0
    mime-types -v1.16
    mixlib-authentication -v1.1.4
    mixlib-cli -v1.2.0
    mixlib-config -v1.1.2
    mixlib-log -v1.2.0
    moneta -v0.6.0
    net-scp -v1.0.4
    net-ssh -v2.1.0
    net-ssh -v2.0.18
    nokogiri -v1.4.4
    ohai -v0.5.8
    rack -v1.2.1
    rack-test -v0.5.7
    rails_best_practices -v0.7.0
    rake -v0.8.7
    rcov -v0.9.9
    reek -v1.2.8
    rest-client -v1.6.1
    roodi -v2.1.0
    rspec -v2.5.0
    rspec-core -v2.5.1
    rspec-expectations -v2.5.0
    rspec-mocks -v2.5.0
    ruby-progressbar -v0.0.9
    ruby2ruby -v1.2.5
    ruby_parser -v2.0.6
    rubyzip -v0.9.4
    Saikuro -v1.1.0
    selenium-webdriver -v0.1.3
    sexp_processor -v3.0.5
    systemu -v1.2.0
    templater -v1.0.0
    term-ansicolor -v1.0.5
    thor -v0.14.6
    typhoeus -v0.2.3
    uuidtools -v2.1.2
    vagrant -v0.7.2
    vcr -v1.6.0
    virtualbox -v0.8.3
    webmock -v1.6.2
    webrat -v0.7.2
    xpath -v0.1.3

    """

  Scenario: The content of the bbb-bdd-meta-bdd gemset
    Given the rvmrc script is in "./labs/bdd/meta/bdd/"
    Then the gemset file "bbb-bdd-meta-bdd.gems" should contain exactly:
    """
    # bbb-bdd-meta-bdd.gems generated gem export file. Note that any env variable settings will be missing. Append these after using a ';' field separator
    abstract -v1.0.0
    activesupport -v3.0.5
    archive-tar-minitar -v0.5.2
    arrayfields -v4.7.4
    aruba -v0.3.2
    b3 -v0.0.0.2
    builder -v3.0.0
    bundler -v1.0.10
    childprocess -v0.1.8.pre
    childprocess -v0.1.7
    chronic -v0.3.0
    churn -v0.0.13
    colored -v1.2
    columnize -v0.3.2
    cucumber -v0.10.0
    diff-lcs -v1.1.2
    erubis -v2.6.6
    fattr -v2.2.0
    ffi -v1.0.6
    ffi -v0.6.3
    flay -v1.4.2
    flog -v2.5.1
    gherkin -v2.3.3
    haml -v3.0.25
    hirb -v0.4.0
    i18n -v0.5.0
    json -v1.5.1
    json -v1.4.6
    json_pure -v1.5.1
    linecache19 -v0.5.11
    main -v4.4.0
    rails_best_practices -v0.7.1
    rake -v0.9.0.beta.1
    rake -v0.8.7
    rcov -v0.9.9
    reek -v1.2.8
    roodi -v2.1.0
    rspec -v2.5.0
    rspec -v2.3.0
    rspec-core -v2.5.1
    rspec-core -v2.3.1
    rspec-expectations -v2.5.0
    rspec-expectations -v2.3.0
    rspec-mocks -v2.5.0
    rspec-mocks -v2.3.0
    ruby-debug-base19x -v0.11.25
    ruby-debug-base19x -v0.11.25.jb3
    ruby-debug-ide -v0.4.17.beta3
    ruby-progressbar -v0.0.9
    ruby2ruby -v1.2.5
    ruby_core_source -v0.1.4
    ruby_parser -v2.0.6
    Saikuro -v1.1.0
    sexp_processor -v3.0.5
    term-ansicolor -v1.0.5

    """

  Scenario: The content of the bbb-bdd-sys gemset
    Given the rvmrc script is in "./labs/bdd/system/"
    Then the gemset file "bbb-bdd-sys.gems" should contain exactly:
    """
    # bbb-bdd-sys.gems generated gem export file. Note that any env variable settings will be missing. Append these after using a ';' field separator
    abstract -v1.0.0
    activesupport -v3.0.4
    addressable -v2.2.4
    akephalos -v0.2.5
    amqp -v0.6.7
    archive-tar-minitar -v0.5.2
    arrayfields -v4.7.4
    builder -v3.0.0
    bundler -v1.1.pre.1
    bundler -v1.0.10
    bundler -v1.0.7
    bunny -v0.6.0
    capybara -v0.4.1.2
    celerity -v0.8.8
    chef -v0.9.12
    childprocess -v0.1.7
    chronic -v0.3.0
    churn -v0.0.13
    colored -v1.2
    crack -v0.1.8
    cucumber -v0.10.0
    cucumber-nagios -v0.8.10
    culerity -v0.2.15
    diff-lcs -v1.1.2
    erubis -v2.6.6
    eventmachine -v0.12.10
    extlib -v0.9.15
    fattr -v2.2.0
    ffi -v1.0.6
    ffi -v0.6.3
    flay -v1.4.2
    flog -v2.5.1
    gherkin -v2.3.3
    git -v1.2.5
    haml -v3.0.25
    highline -v1.6.1
    hirb -v0.4.0
    i18n -v0.5.0
    jeweler -v1.5.2
    jruby-jars -v1.5.6
    json -v1.5.1
    json -v1.4.6
    json_pure -v1.5.1
    main -v4.4.0
    mario -v0.0.6
    mechanize -v1.0.0
    mime-types -v1.16
    mixlib-authentication -v1.1.4
    mixlib-cli -v1.2.0
    mixlib-config -v1.1.2
    mixlib-log -v1.2.0
    moneta -v0.6.0
    net-scp -v1.0.4
    net-ssh -v2.1.0
    net-ssh -v2.0.18
    nokogiri -v1.4.4
    ohai -v0.5.8
    rack -v1.2.1
    rack-test -v0.5.7
    rails_best_practices -v0.7.0
    rake -v0.8.7
    rcov -v0.9.9
    reek -v1.2.8
    rest-client -v1.6.1
    roodi -v2.1.0
    rspec -v2.5.0
    rspec-core -v2.5.1
    rspec-expectations -v2.5.0
    rspec-mocks -v2.5.0
    ruby-progressbar -v0.0.9
    ruby2ruby -v1.2.5
    ruby_parser -v2.0.6
    rubyzip -v0.9.4
    Saikuro -v1.1.0
    selenium-webdriver -v0.1.3
    sexp_processor -v3.0.5
    systemu -v1.2.0
    templater -v1.0.0
    term-ansicolor -v1.0.5
    thor -v0.14.6
    typhoeus -v0.2.3
    uuidtools -v2.1.2
    vagrant -v0.7.2
    vcr -v1.6.0
    virtualbox -v0.8.3
    webmock -v1.6.2
    webrat -v0.7.2
    xpath -v0.1.3

    """

  Scenario: The content of the bbb-bdd-sys-os gemset
    Given the rvmrc script is in "./labs/bdd/system/os/"
    Then the gemset file "bbb-bdd-sys-os.gems" should contain exactly:
    """
    # bbb-bdd-sys-os.gems generated gem export file. Note that any env variable settings will be missing. Append these after using a ';' field separator
    amqp -v0.6.7
    builder -v3.0.0
    bundler -v1.0.10
    bundler08 -v0.8.5
    cucumber -v0.10.0
    cucumber-nagios -v0.8.0
    diff-lcs -v1.1.2
    eventmachine -v0.12.10
    extlib -v0.9.15
    gherkin -v2.3.3
    highline -v1.6.1
    json -v1.4.6
    net-ssh -v2.0.18
    nokogiri -v1.4.4
    rack -v1.2.1
    rack-test -v0.5.7
    rspec -v2.5.0
    rspec-core -v2.5.1
    rspec-expectations -v2.5.0
    rspec-mocks -v2.5.0
    templater -v1.0.0
    term-ansicolor -v1.0.5
    webrat -v0.7.0

    """

  Scenario: The content of the bbb-chefserver gemset
    Given the rvmrc script is in "./labs/vm/chefserver/"
    Then the gemset file "bbb-chefserver.gems" should contain exactly:
    """
    # bbb-chefserver.gems generated gem export file. Note that any env variable settings will be missing. Append these after using a ';' field separator
    abstract -v1.0.0
    archive-tar-minitar -v0.5.2
    bunny -v0.6.0
    chef -v0.9.12
    erubis -v2.6.6
    extlib -v0.9.15
    ffi -v0.6.3
    highline -v1.6.1
    i18n -v0.5.0
    json -v1.5.1
    json -v1.4.6
    mario -v0.0.6
    mime-types -v1.16
    mixlib-authentication -v1.1.4
    mixlib-cli -v1.2.0
    mixlib-config -v1.1.2
    mixlib-log -v1.2.0
    moneta -v0.6.0
    net-scp -v1.0.4
    net-ssh -v2.1.3
    ohai -v0.5.8
    rest-client -v1.6.1
    systemu -v1.2.0
    thor -v0.14.6
    uuidtools -v2.1.2
    vagrant -v0.7.2
    virtualbox -v0.8.3

    """

  Scenario: The content of the bbb-vm-dev gemset
    Given the rvmrc script is in "./labs/vm/development/"
    Then the gemset file "bbb-vm-dev.gems" should contain exactly:
    """
    # bbb-vm-dev.gems generated gem export file. Note that any env variable settings will be missing. Append these after using a ';' field separator
    abstract -v1.0.0
    archive-tar-minitar -v0.5.2
    bunny -v0.6.0
    chef -v0.9.12
    erubis -v2.6.6
    extlib -v0.9.15
    ffi -v0.6.3
    highline -v1.6.1
    i18n -v0.5.0
    json -v1.5.1
    json -v1.4.6
    mario -v0.0.6
    mime-types -v1.16
    mixlib-authentication -v1.1.4
    mixlib-cli -v1.2.0
    mixlib-config -v1.1.2
    mixlib-log -v1.2.0
    moneta -v0.6.0
    net-scp -v1.0.4
    net-ssh -v2.1.0
    ohai -v0.5.8
    rest-client -v1.6.1
    systemu -v1.2.0
    thor -v0.14.6
    uuidtools -v2.1.2
    vagrant -v0.7.2
    virtualbox -v0.8.3

    """


