# frozen_string_literal: true

module Users
  class RegistrationsController < Devise::RegistrationsController
    protected

    def after_update_path_for(resource)
      if resource.previous_changes.include?('id')
        root_path
      else
        profile_path
      end
    end
  end
end
