class AddLogoToResort < ActiveRecord::Migration
  def change
    add_column :resorts, :logo, :string
  end
end
