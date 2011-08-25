class AddGravatarToUsers < ActiveRecord::Migration
  def change
    add_column :users, :gravatar_file_name, :string
    add_column :users, :gravatar_file_size, :integer
    add_column :users, :gravatar_updated_at, :datetime
    add_column :users, :gravatar_content_type, :string
  end
end
