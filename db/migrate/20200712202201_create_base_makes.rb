class CreateBaseMakes < ActiveRecord::Migration[5.2]
  def change
    create_table :base_makes do |t|
      t.integer :MakeID
      t.string :MakeName

      t.timestamps
    end
  end
end
