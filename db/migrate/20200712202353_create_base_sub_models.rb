class CreateBaseSubModels < ActiveRecord::Migration[5.2]
  def change
    create_table :base_sub_models do |t|
      t.integer :SubModelID
      t.string :SubModelName

      t.timestamps
    end
  end
end
