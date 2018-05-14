class AddingDefaultsToCharacters < ActiveRecord::Migration[5.1]
  def change
    change_column_default :characters, :equipment, '(please input data)'
    change_column_default :characters, :inventory, '(please input data)'
    change_column_default :characters, :notes, '(please input data)'
    change_column_default :characters, :personality, '(please input data)'
    change_column_default :characters, :ideals, '(please input data)'
    change_column_default :characters, :bonds, '(please input data)'
    change_column_default :characters, :flaws, '(please input data)'
    change_column_default :characters, :allies, '(please input data)'
  end
end
