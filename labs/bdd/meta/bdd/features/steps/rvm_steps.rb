Given /^the rvmrc script is in "([^"]*)"$/ do |sub_dir|
  @rvmrc_path = Pathname(__FILE__).ascend { |d| h=d+sub_dir; break h if File.directory?(h) }
  Then "a file named \"#{@rvmrc_path + '.rvmrc'}\" should exist" # Aruba step
end
