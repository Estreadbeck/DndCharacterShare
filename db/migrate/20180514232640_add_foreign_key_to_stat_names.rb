class AddForeignKeyToStatNames < ActiveRecord::Migration[5.1]
  def change
    add_column :stats, :stat_name_id, :bigint
    add_column :stat_names, :stat_id, :bigint
    remove_column :stats, :name
    add_foreign_key :stat_names, :stats
  end
end
