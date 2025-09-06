# frozen_string_literal: true

class ProfileController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  def show; end

  def update
    if @user.update(profile_params)
      flash[:success] = flash_message_for_update
    else
      flash.now[:error] = @user.errors.full_messages.to_sentence
      render :show, status: :unprocessable_entity
    end

    redirect_to profile_path unless performed?
  end

  private

  def set_user
    @user = current_user
  end

  def profile_params
    params.expect(user: %i[avatar name pronouns bio])
  end

  def flash_message_for_update
    if profile_params.key?(:avatar)
      'Avatar updated successfully.'
    else
      'Profile details saved.'
    end
  end
end
