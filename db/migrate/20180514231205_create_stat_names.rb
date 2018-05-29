class CreateStatNames < ActiveRecord::Migration[5.1]
  def change
    create_table :stat_names do |t|
      t.string :name
    end
  end
end
