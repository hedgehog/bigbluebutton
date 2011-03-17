# steps go here!
Then /^the Ruby implmentation should be "([^"]*)"$/ do |rvmruby|
  Then "the file \"#{@rvmrc_path}.rvmrc\" should match /\"#{rvmruby}@/"
end
