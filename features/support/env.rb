require 'coveralls'
Coveralls.wear_merged!('rails')

require 'cucumber/rails'
require 'email_spec/cucumber'
require_relative './oauth'

ActionController::Base.allow_rescue = false

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

Before do
  OmniAuth.config.test_mode = true
  OmniAuth.config.mock_auth[:facebook] = OmniAuth::AuthHash.new(OmniAuthFixtures.facebook_response)
end

Cucumber::Rails::Database.javascript_strategy = :truncation

Chromedriver.set_version '2.36'

chrome_options = %w(no-sandbox disable-popup-blocking disable-infobars)

Capybara.register_driver :chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new(
      args: chrome_options
  )
  Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      options: options
  )
end

Capybara.javascript_driver = :chrome


