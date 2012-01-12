class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.string :ancestry

      t.timestamps
    end
  end
end
