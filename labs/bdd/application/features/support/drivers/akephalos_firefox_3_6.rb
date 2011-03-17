Capybara.register_driver :akephalos_firefox_3_6 do |app|
  # available options:
  #   :ie6, :ie7, :ie8, :firefox_3, :firefox_3_6
  Capybara::Driver::Akephalos.new(app, :browser => :firefox_3_6, :validate_scripts => true)
end

# Allows the use of a tag @htmlunit AND @firefox_3_6 before a scenario to run it in akephalos with Firefox 3.6
Before('@htmlunit', '@firefox_3_6') do
  Capybara.current_driver = :akephalos_firefox_3_6
end
