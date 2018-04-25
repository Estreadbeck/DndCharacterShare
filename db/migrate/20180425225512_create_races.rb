class CreateRaces < ActiveRecord::Migration[5.1]
  def change
    create_table :races do |t|
      t.string :race_name
      t.text :race_description

      t.timestamps
    end

    remove_column :characters, :race
    add_column :characters, :race_id, :bigint
    add_foreign_key :characters, :races
  end
end
