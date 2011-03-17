Given /^RVM is installed locally$/ do
  @tmp="/home/hedge/Documents/Workspaces/b3/.rvmrc"
  rvm_local_install?.should be_true
end

Given /^the RVM API is available$/ do
  rvm_path.should be_directory
  lp = File.expand_path(File.join(rvm_path, 'lib'))
  $LOAD_PATH.unshift lp unless $LOAD_PATH.include?(lp)
  require("rvm") unless defined? RVM
  defined?(RVM).should be_true
end
