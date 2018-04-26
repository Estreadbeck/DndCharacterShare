class AddIndexToCharactersOnUserId < ActiveRecord::Migration[5.1]
  def change
    add_index :characters, :user_id, name: "index_characters_on_user_id"
  end
end
