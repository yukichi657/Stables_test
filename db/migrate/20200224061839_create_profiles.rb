class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :photo
      t.string :age
      t.string :sex
      t.text :medical_check

      t.timestamps
    end
  end
end
