# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AvatarUploader, type: :uploader do
  let(:user) { create(:user) }
  let(:uploader) { described_class.new(user, :avatar) }

  before do
    described_class.enable_processing = true
    Rails.root.join('spec/support/fixtures/test_avatar.png').open do |f|
      uploader.store!(f)
    end
  end

  after do
    described_class.enable_processing = false
    uploader.remove!
  end

  it 'has the correct file permissions' do
    expect(uploader).to have_permissions(0o644)
  end

  it 'has the correct storage directory' do
    expect(uploader.store_dir).to eq("uploads/user/avatar/#{user.id}")
  end
end
