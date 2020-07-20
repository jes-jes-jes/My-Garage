class RenameBase < ActiveRecord::Migration[5.2]
  def change
  	rename_table :bases, :base_years
  end
end
