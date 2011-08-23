class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :hometown
      t.string :beer
      t.string :skill

      t.timestamps
    end
  end
end
