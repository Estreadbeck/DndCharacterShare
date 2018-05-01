class CreateTraits < ActiveRecord::Migration[5.1]
  def change
    create_table :traits do |t|
    t.string :name
      t.text :description
      t.integer :level
      t.bigint :race_id

      t.timestamps
    end
    add_foreign_key :traits, :races
    add_index :traits, :race_id
  end
end
