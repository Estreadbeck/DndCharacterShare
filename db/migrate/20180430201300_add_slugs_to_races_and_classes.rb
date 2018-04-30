class AddSlugsToRacesAndClasses < ActiveRecord::Migration[5.1]
  def change
    add_column :races, :slug, :string
    add_index :races, :slug, unique: true
    add_column :character_classes, :slug, :string
    add_index :character_classes, :slug, unique: true
  end
end
