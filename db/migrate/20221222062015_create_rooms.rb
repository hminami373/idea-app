class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :theme, null: false
      t.string :theme_info, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
