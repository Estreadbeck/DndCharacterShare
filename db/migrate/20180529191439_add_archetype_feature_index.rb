class AddArchetypeFeatureIndex < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :archetype_features, :archetypes
    add_index :archetype_features, :archetype_id
  end
end
