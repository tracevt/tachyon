# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.3.0'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 8.0', '>= 8.0.2'

# Propshaft for assets
gem 'propshaft'

# jsbundling for javascript
gem 'jsbundling-rails', '~> 1.3'

# css-bundlings for tailwind and CSS
gem 'cssbundling-rails', '~> 1.4'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '>= 5.0'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

# Use Redis adapter to run Action Cable in production
# gem "redis", ">= 4.0.1"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[windows jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Rubocop for static linting

gem 'rubocop', '~> 1.76', require: false
gem 'rubocop-capybara', '~> 2.22', '>= 2.22.1', require: false
gem 'rubocop-factory_bot', '~> 2.27', '>= 2.27.1', require: false
gem 'rubocop-rails', '~> 2.32.0', require: false
gem 'rubocop-rspec', '~> 3.6', require: false
gem 'rubocop-rspec_rails', '~> 2.31', require: false

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri windows]

  # RSpec for testing
  gem 'rspec-rails', '~> 8.0'

  # Factory Bot for creating test data
  gem 'factory_bot_rails', '~> 6.0'

  # Faker for generating fake data for tests
  gem 'faker', '~> 3.0'

  # Shoulda Matchers for RSpec
  gem 'shoulda-matchers', '~> 6.5'

  # SimpleCov for code coverage reporting
  gem 'simplecov', require: false, group: :test

  # Database Cleaner for cleaning your test database between runs
  gem 'database_cleaner-active_record', '~> 2.0'

  # For integration testing with Capybara and headless chrome
  gem 'capybara', '~> 3.0'
  gem 'selenium-webdriver', '~> 4.33'
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end
