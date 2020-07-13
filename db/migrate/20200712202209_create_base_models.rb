class CreateBaseModels < ActiveRecord::Migration[5.2]
  def change
    create_table :base_models do |t|
      t.integer :ModelID
      t.string :ModelName
      t.integer :VehicleTypeID

      t.timestamps
    end
  end
end
