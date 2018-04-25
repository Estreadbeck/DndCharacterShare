class AddLevelsToCharacters < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :level, :integer
  end
end
