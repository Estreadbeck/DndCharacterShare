class RemoveLevelsFrom < ActiveRecord::Migration[5.1]
  def change
    remove_column :traits, :level
  end
end
