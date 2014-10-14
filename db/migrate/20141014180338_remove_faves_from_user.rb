class RemoveFavesFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :fave_two
    remove_column :users, :fave_three
  end
end
