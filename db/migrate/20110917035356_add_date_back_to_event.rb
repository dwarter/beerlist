class AddDateBackToEvent < ActiveRecord::Migration
  def change
    add_column :events, :date, :date
  end
end
