class AddNewbeerToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :newbeer, :string
  end
end
