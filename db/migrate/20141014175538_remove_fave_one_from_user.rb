class RemoveFaveOneFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :fave_one
  end
end
