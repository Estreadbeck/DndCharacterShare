class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :race
      t.text :character_image
      t.string :class
      t.text :backstory

      t.timestamps
    end
  end
end
