# frozen_string_literal: true

require 'capybara/rails'
require 'capybara/rspec'
require 'selenium/webdriver'

RSpec.configure do |config|
  config.before(:each, type: :feature) do
    Capybara.register_driver :headless_chrome do |app|
      options = Selenium::WebDriver::Chrome::Options.new.tap do |opts|
        unless ENV['HEADLESS']
          opts.add_argument('--headless') # Run Chrome in headless mode
        end
        opts.add_argument('--disable-gpu')
        opts.add_argument('--no-sandbox')
        opts.add_argument('--disable-dev-shm-usage')
        opts.add_argument('--disable-site-isolation-trials')

        # Set the window size
        opts.add_argument('--window-size=1440,900')
      end

      Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
    end

    Capybara.javascript_driver = :headless_chrome
    Capybara.default_driver = :headless_chrome
  end

  # Adjust Capybara timeouts based on CI environment
  config.before(:each, type: :feature) do
    if ENV['CI']
      Capybara.default_max_wait_time = 30
      puts 'Capybara timeout set to 30 seconds for CI environment.'
    else
      Capybara.default_max_wait_time = 10
    end
  end
end
