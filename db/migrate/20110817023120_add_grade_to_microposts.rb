class AddGradeToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :grade, :string
  end
end
