class CreateVaccinations < ActiveRecord::Migration[5.2]
  def change
    create_table :vaccinations do |t|
      t.string :name
      t.datetime :injected_at
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
