require 'vcr'

::VCR.config do |c|
  a_day = 24 * 60 * 60
  c.cassette_library_dir  = 'vcr/cassettes'
  c.stub_with :webmock
  c.ignore_localhost      = false # true for javascript-enabled drivers?
  c.default_cassette_options = { :record => :none, :re_record_interval => a_day }
end

::VCR.cucumber_tags do |t|
  t.tags '@wip', :record => :none
  t.tags '@record', :record => :new_episodes, :match_requests_on => [:uri, :method, :body]
  t.tags '@record', :record => :new_episodes, :match_requests_on => [:uri, :method, :body]
end
