# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Welcome page' do
  it 'displays a welcome message' do
    visit '/'

    expect(page).to have_text('Welcome to Tachyon')
  end

  context 'with a logged in user' do
    let_it_be(:user) { create(:user) }

    before do
      sign_in(user)
      visit '/'
    end

    it 'displays a greeting message with the user name' do
      expect(page).to have_text("Hola #{user.name}")
    end
  end
end
