class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :song_name
      t.string :preview_url
      t.string :artist_name
      t.string :album_art

      t.timestamps null: false
    end
  end
end
