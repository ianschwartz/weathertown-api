class CreateReadings < ActiveRecord::Migration[5.1]
  def change
    create_table :readings do |t|
      t.float :temp
      t.float :humidity
      t.datetime :created_on
      t.references :station, foreign_key: true

      t.timestamps
    end
  end
end
