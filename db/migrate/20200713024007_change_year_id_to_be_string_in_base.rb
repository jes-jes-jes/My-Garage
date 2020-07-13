class ChangeYearIdToBeStringInBase < ActiveRecord::Migration[5.2]
  def change
  	change_table :bases do |t|
    t.change :YearID, :string
  	end
  end
end