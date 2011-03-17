BBB_BDD_ENV = 'test' unless defined?(BBB_BDD_ENV)
# require File.expand_path(File.dirname(__FILE__) + "/../../config/boot")

require 'capybara/cucumber'
require 'rspec/expectations'

Capybara.app_host = "http://localhost:8080" # where your server is running
