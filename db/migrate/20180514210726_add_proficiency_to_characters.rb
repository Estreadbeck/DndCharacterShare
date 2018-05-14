class AddProficiencyToCharacters < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :proficiency, :integer, default: 2
  end
end
