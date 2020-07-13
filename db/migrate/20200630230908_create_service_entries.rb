class CreateServiceEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :service_entries do |t|
      t.string :service
      t.string :date
      t.integer :mileage
      t.text :comments
      t.references :car, foreign_key: true

      t.timestamps
    end
  end
end
