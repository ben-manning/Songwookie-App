require 'rails_helper'

RSpec.describe Song, type: :model  do
	describe 'Attributes' do
		it { is_expected.to respond_to :song_name   }
		it { is_expected.to respond_to :preview_url }
		it { is_expected.to respond_to :artist_name }
		it { is_expected.to respond_to :album_art   }
	end

	describe 'Database' do 
		it { is_expected.to have_db_column :song_name  }
		it { is_expected.to have_db_column :preview_url}
		it { is_expected.to have_db_column :artist_name}
		it { is_expected.to have_db_column :album_art  }
	end

	# describe 'Validations' do
	# 	it { is_expected.to validate_presence_of :title       }
	# 	it { is_expected.to validate_presence_of :preview_url }
	# 	it { is_expected.to validate_presence_of :artist_name }
	# 	it { is_expected.to validate_presence_of :album_art   }
	# end
end