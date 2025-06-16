require 'rails_helper'

RSpec.feature "Welcome page", type: :feature do
  it 'should display a welcome message' do
    visit '/'

    expect(page).to have_text('Welcome to Tachyon')
  end
end
