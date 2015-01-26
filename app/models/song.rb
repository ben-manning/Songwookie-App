class Song < ActiveRecord::Base
	validates :song_name,   presence: true
	validates :preview_url, presence: true
	validates :artist_name, presence: true
	validates :album_art,   presence: true
end
