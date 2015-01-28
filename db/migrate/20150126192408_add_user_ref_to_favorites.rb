class AddUserRefToFavorites < ActiveRecord::Migration
  def change
    add_reference :favorites, :user, index: true
    add_foreign_key :favorites, :users
  end
end
