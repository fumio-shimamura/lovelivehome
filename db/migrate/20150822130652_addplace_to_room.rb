class AddplaceToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :place, :string
  end
end
