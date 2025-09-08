# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProfileController, type: :controller do
  describe 'GET #show' do
    context 'when a user is authenticated' do
      login_user

      before { get :show }

      it 'renders the show template' do
        expect(response).to render_template(:show)
      end

      it 'returns a successful http status' do
        expect(response).to have_http_status(:success)
      end
    end

    context 'when a user is not authenticated' do
      it 'redirects to the sign-in page' do
        get :show
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end
end
