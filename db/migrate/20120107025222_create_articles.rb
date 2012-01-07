class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :content
      t.string :articlepic_file_name
      t.integer :articlepic_file_size
      t.timestamp :articlepic_updated_at
      t.string :articlepic_content_type

      t.timestamps
    end
  end
end
