# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Welcome page' do
  it 'displays a welcome message' do
    visit '/'

    expect(page).to have_text('Welcome to Tachyon')
  end
end
