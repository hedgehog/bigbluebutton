# steps go here!

Then /^the gemset name should be "([^"]*)"$/ do |rvmgs|
  Then "the file \"#{@rvmrc_path}.rvmrc\" should match /\"#{rvmgs}\"/"
end

