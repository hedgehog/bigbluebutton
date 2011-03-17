# steps go here!
Then /^the gemset file "([^"]*)" should contain exactly:$/ do |file, exact_content|
  check_exact_file_content("#{@rvmrc_path}/#{file}", exact_content)
end

Then /^the gemset file name should be "([^"]*)"$/ do |file|
  check_file_presence(["#{@rvmrc_path}/#{file}"], true)
end

