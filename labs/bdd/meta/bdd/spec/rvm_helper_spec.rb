require 'pathname'
require Pathname(__FILE__).ascend { |d| h=d+'spec_helper.rb'; break h if h.file? }

describe "RVM .rvmrc file" do

  it "should load gemsets" do
    true.should == false
  end
end