class AddCharacterOptions < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :equipment, :text
    add_column :characters, :inventory, :text
    add_column :characters, :armor_class, :integer
    add_column :characters, :initiative, :string
    add_column :characters, :speed, :integer
    add_column :characters, :notes, :text

    add_column :characters, :personality, :text
    add_column :characters, :ideals, :text
    add_column :characters, :bonds, :text
    add_column :characters, :flaws, :text

    add_column :characters, :age, :integer
    add_column :characters, :height, :string
    add_column :characters, :weight, :string
    add_column :characters, :eyes, :string
    add_column :characters, :skin, :string
    add_column :characters, :hair, :string

    add_column :characters, :allies, :text

  end
end
