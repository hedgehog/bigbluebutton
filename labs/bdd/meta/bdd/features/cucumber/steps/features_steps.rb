Given /^a BDD inclined BigBlueButton developer$/ do
  true
end

When /^a step becomes complex$/ do
  true
end

Then /^the method behavior is specified in the B3 gem$/ do
  true
end

And /^the contents are extracted to the B3 gem$/ do
  true
end

And /^a helper method name is added below$/ do
  true
end

And /^the implemented "([^"]*)" methods are:$/ do |mod, method_table|
  mod_obj = Object.full_const_get(mod)
  method_table.hashes.each do |hash|
    mod_obj.private_method_defined?(hash['name'].intern).should be_true
  end
end


