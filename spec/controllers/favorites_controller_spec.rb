require 'rails_helper'

RSpec.describe FavoritesController, type: :controller do
  describe '#new' do
    before { get :new, user_id: '1' }

    it 'returns 200' do
      expect(response).to be_success
    end

    it 'renders favorites/new' do
      expect(response).to render_template 'favorites/new'
    end
  end
end
