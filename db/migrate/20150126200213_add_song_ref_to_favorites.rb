class AddSongRefToFavorites < ActiveRecord::Migration
  def change
    add_reference :favorites, :song, index: true
    add_foreign_key :favorites, :songs
  end
end
