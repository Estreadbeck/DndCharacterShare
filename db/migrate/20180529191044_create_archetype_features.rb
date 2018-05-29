class CreateArchetypeFeatures < ActiveRecord::Migration[5.1]
  def change
    create_table :archetype_features do |t|
      t.string :feature_name
      t.text :feature_desc
      t.integer :feature_level
      t.bigint :archetype_id

      t.timestamps
    end
    add_index :archetypes, :character_class_id
  end
end
