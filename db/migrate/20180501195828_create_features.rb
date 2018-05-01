class CreateFeatures < ActiveRecord::Migration[5.1]
  def change
    create_table :features do |t|
      t.string :name
      t.text :description
      t.integer :level
      t.bigint :character_class_id

      t.timestamps
    end
    add_foreign_key :features, :character_classes
    add_index :features, :character_class_id

  end
end
