# frozen_string_literal: true

require 'carrierwave/test/matchers'

RSpec.configure do |config|
  config.include CarrierWave::Test::Matchers, type: :uploader

  config.before(:each, type: :uploader) do
    CarrierWave.configure do |carrier_config|
      carrier_config.storage = :file
      carrier_config.enable_processing = false
      carrier_config.skip_ssrf_protection = true
    end
  end
end
