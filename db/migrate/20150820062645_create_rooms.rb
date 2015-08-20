class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.references :user, index: true, foreign_key: true
      t.string :image
      t.string :type
      t.text :description
      t.string :detail01
      t.string :detail02
      t.string :detail03

      t.timestamps null: false

      t.index [:user_id, :created_at] # この行を追加
      t.index [:type, :created_at] # この行を追加
    end
  end
end
