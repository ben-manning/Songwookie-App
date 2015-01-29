class Song < ActiveRecord::Base
  acts_as_votable

  has_many :favorites
  has_many :users, :through => :favorites

  validates :song_name,   presence: true
    
  validates :preview_url, presence: true, uniqueness: true
	validates :artist_name, presence: true
	validates :album_art,   presence: true
end
