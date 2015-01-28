require 'rails_helper'

RSpec.describe Favorite, type: :model  do
	describe 'Database' do
		it { is_expected.to belong_to :user }
		it { is_expected.to belong_to :song }
	end
end