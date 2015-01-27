require 'rails_helper'

RSpec.describe User, type: :model do
	let(:user) { FactoryGirl.create (:user) }
	describe 'Attributes' do
		it { is_expected.to respond_to :user_name }
		it { is_expected.to respond_to :email     }
		it { is_expected.to respond_to :password  }
	end

	describe 'Database' do
		it { is_expected.to have_db_column :user_name  }
		it { is_expected.to have_db_column :email      }
		it { is_expected.to have_db_column :password   }
	end

	describe 'Validations' do
		it { is_expected.to validate_presence_of :user_name }
		it { is_expected.to validate_presence_of :email     }
		it { is_expected.to validate_presence_of :password  }
	end
end

