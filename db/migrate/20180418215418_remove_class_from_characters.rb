class RemoveClassFromCharacters < ActiveRecord::Migration[5.1]
  def change
    remove_column :characters, :class, :string
    add_column :characters, :character_class, :string
  end
end
