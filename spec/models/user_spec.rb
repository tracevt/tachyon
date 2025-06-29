# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User do
  it 'creates a valid user with an encrypted password', :aggregate_failures do
    user = create(:user)

    expect(user).to be_persisted
    expect(user.encrypted_password).to be_present
    expect(user.valid_password?('password')).to be true
  end
end
