class AddSlugsToCharacters < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :slug, :string
    add_index :characters, :slug, name: "index_characters_on_slug", unique: true
  end
end
