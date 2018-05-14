class AddingDefaultsToCharactersVerTwo < ActiveRecord::Migration[5.1]
  def change
    change_column_default :characters, :backstory, '(please input data)'
  end
end
