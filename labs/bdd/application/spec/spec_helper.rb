BBB_BDD_ENV = 'test' unless defined?(BBB_BDD_ENV)
#require File.expand_path(File.dirname(__FILE__) + "/../config/boot")
require 'capybara/rspec'    # Capybara is only included for examples with :type => :request
require 'vcr'

::VCR.config do |c|
  a_day = 24 * 60 * 60
  c.cassette_library_dir  = 'vcr/cassettes'
  c.http_stubbing_library = :webmock
  c.ignore_localhost      = false # true for javascript-enabled drivers?
  c.default_cassette_options = { :record => :none, :re_record_interval => a_day }
end

RSpec.configure do |conf|
  conf.extend ::VCR::RSpec::Macros
end

def app
  ##
  # You can handle all padrino applications using instead:
  #   Padrino.application
  # Bbb.tap { |app|  }
end
