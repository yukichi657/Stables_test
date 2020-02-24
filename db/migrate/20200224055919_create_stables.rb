class CreateStables < ActiveRecord::Migration[5.2]
  def change
    create_table :stables do |t|
      t.string :satble_number
      t.string :name
      t.string :photo

      t.timestamps
    end
  end
end
