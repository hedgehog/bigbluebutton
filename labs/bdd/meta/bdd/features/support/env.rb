
$LOAD_PATH.unshift("/home/hedge/.rvm/gems/ruby-1.9.2-p136@bbb-bdd-meta-bdd/gems/aruba-0.3.2/lib")

require 'rspec/expectations'
puts $LOAD_PATH.inspect
require 'aruba/cucumber'

require 'b3'

# When invoking Aruba's 'run command' steps you may need to override Aruba's
# detect_ruby_script method since it may be that the script executable you
# wish to run is not be on Aruba's path.
module ::ArubaOverrides
  def detect_ruby_script(cmd)
    if cmd =~ /^executable /
      "ruby -I../../lib -S ../../bin/#{cmd}"
    else
      super(cmd)
    end
  end
end

# Source: https://github.com/datamapper/extlib
class Object
  def blank?
    nil? || (respond_to?(:empty?) && empty?)
  end
  def full_const_get(name)
    list = name.split("::")
    list.shift if list.first.blank?
    obj = self
    list.each do |x|
      # This is required because const_get tries to look for constants in the
      # ancestor chain, but we only want constants that are HERE
      obj = obj.const_defined?(x) ? obj.const_get(x) : obj.const_missing(x)
    end
    obj
  end
end

World do
  include ::ArubaOverrides
  include ::B3::Bdd::Helpers
end
