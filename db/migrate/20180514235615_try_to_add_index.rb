class TryToAddIndex < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :stats, :stat_names
    remove_column :stats, :stat_name_id
    add_column :stats, :name, :string
    drop_table :stat_names
  end
end
