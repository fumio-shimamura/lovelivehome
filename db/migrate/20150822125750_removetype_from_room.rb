class RemovetypeFromRoom < ActiveRecord::Migration
  def change
    remove_column(:rooms, :type)
  end
end
