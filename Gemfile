source 'http://rubygems.org'

gem 'rails', '3.1.0.rc5'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'

# Asset template engines
gem 'sass-rails', "~> 3.1.0.rc"
gem 'coffee-script'
gem 'uglifier'

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
  gem 'simplecov'
end

group :development do
  gem 'guard'
  gem 'guard-rspec'
  gem 'spork'
  gem 'guard-spork'
end

group :test, :development do
  gem "capybara"
  gem "rspec-rails", "~> 2.4"
  gem "factory_girl_rails", "~> 1.1.rc1"
  gem 'nokogiri'
end
