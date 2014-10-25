class CreateUserPhotos < ActiveRecord::Migration
  def change
    create_table :user_photos do |t|

      t.timestamps
    end
  end
end
