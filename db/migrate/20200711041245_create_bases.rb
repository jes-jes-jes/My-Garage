class CreateBases < ActiveRecord::Migration[5.2]
  def change
    create_table :bases do |t|
      t.integer :Base_VehicleID
      t.string :YearID
      t.integer :MakeID
      t.integer :ModelID

      t.timestamps
    end
  end
end
