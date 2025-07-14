# frozen_string_literal: true

class ProfileController < ApplicationController
  before_action :authenticate_user!

  def show; end
end
