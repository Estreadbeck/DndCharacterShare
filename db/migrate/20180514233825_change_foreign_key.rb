class ChangeForeignKey < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :stat_names, :stats
    remove_column :stat_names, :stat_id
    add_foreign_key :stats, :stat_names
  end
end
