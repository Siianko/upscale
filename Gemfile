source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.4.1'

gem 'rails', '~> 5.2.0'
gem "haml-rails", "~> 1.0"
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'devise'
gem 'omniauth-facebook', '~> 4.0'
gem 'state_machines-activerecord'
gem 'sprockets', '~> 3.7.2'


group :development, :test do
  gem 'coveralls', require: false
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'state_machines-rspec'
  gem 'shoulda-matchers'
  gem 'factory_bot_rails'
  gem 'cucumber-rails', '~> 1.6', require: false
  gem 'database_cleaner'
  gem 'launchy'
  gem 'chromedriver-helper'
  gem 'selenium-webdriver'
  gem 'email_spec'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
