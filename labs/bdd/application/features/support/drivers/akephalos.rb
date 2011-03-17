Capybara.register_driver :akephalos do |app|
  # available options:
  #   :ie6, :ie7, :ie8, :firefox_3, :firefox_3_6
  Capybara::Driver::Akephalos.new(app, :validate_scripts => true)
end

# Allows the use of a tag @akephalos OR @htmlunit before a scenario to run it in akephalos (HTMLUnit)
Before('@akephalos,@htmlunit') do
  Capybara.current_driver = :akephalos
end
