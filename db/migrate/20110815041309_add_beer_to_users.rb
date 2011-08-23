class AddBeerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :beer, :string
  end
end
