class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :date
      t.string :location
      t.string :description
      t.string :eventpic_file_name
      t.integer :eventpic_file_size
      t.timestamp :eventpic_updated_at
      t.string :eventpic_content_type

      t.timestamps
    end
  end
end
