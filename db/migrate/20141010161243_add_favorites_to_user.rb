class AddFavoritesToUser < ActiveRecord::Migration
  def change
    add_column :users, :fave_one, :string
    add_column :users, :fave_two, :string
    add_column :users, :fave_three, :string
  end
end
