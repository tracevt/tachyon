# frozen_string_literal: true

require 'capybara/rails'
require 'capybara/rspec'
require 'selenium/webdriver' # Ensure this is loaded if you're using it

RSpec.configure do |config|
  # Only apply to feature specs, to prevent loading unnecessary drivers/config
  # for unit tests (e.g., model specs).
  config.before(:each, type: :feature) do
    # Configure the Capybara driver (e.g., headless Chrome)
    Capybara.register_driver :headless_chrome do |app|
      options = Selenium::WebDriver::Chrome::Options.new.tap do |opts|
        # These are common arguments for running headless Chrome
        unless ENV['HEADLESS']
          opts.add_argument('--headless') # Run Chrome in headless mode
        end
        opts.add_argument('--disable-gpu') # Applicable for older Chrome versions
        opts.add_argument('--no-sandbox') # Bypass OS security model (needed for some CI environments)
        opts.add_argument('--disable-dev-shm-usage') # Overcome limited resource problems
        opts.add_argument('--disable-site-isolation-trials') # May help with some issues

        # Set the window size
        # You can adjust these dimensions as needed
        opts.add_argument('--window-size=1440,900')
      end

      # Connect Capybara to the headless Chrome driver
      Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
    end

    # Set the default driver for feature specs to use headless Chrome
    Capybara.javascript_driver = :headless_chrome
    Capybara.default_driver = :headless_chrome
  end

  # Adjust Capybara timeouts based on CI environment
  config.before(:each, type: :feature) do
    if ENV['CI']
      Capybara.default_max_wait_time = 30
      puts 'Capybara timeout set to 10 seconds for CI environment.' # Optional: for debugging CI runs
    else
      Capybara.default_max_wait_time = 10
    end
  end
end
