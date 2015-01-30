
class Song < ActiveRecord::Base
  acts_as_votable

  # Associations
  has_many :favorites, dependent: :destroy
  has_many :users, :through => :favorites

  # Validations
  validates :song_name,   presence: true  
  validates :preview_url, presence: true
  validates :artist_name, presence: true
  validates :album_art,   presence: true
end
