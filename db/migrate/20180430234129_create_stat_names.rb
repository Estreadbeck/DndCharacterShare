class CreateStatNames < ActiveRecord::Migration[5.1]
  def change
    create_table :stat_names do |t|
      t.string :name
    end
    remove_column :stats, :name
    add_column :stats, :stat_name_id, :bigint
    add_foreign_key :stats, :stat_names
  end
end
