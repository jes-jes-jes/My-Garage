# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
csv_text = File.read(Rails.root.join('lib', 'seeds', 'Base_Vehicle.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1', :col_sep => ',' )
csv.each do |row|
  t = Base.new
  t.Base_VehicleID = row['BaseVehicleID']
  t.YearID = row['YearID']
  t.MakeID = row['MakeID']
  t.ModelID = row['ModelID']
  t.save
  puts "#{t.Base_VehicleID}, #{t.YearID}, #{t.MakeID}, #{t.ModelID} saved"
end

puts "There are now #{Base.count} rows in the Base Vehicle table"


require 'csv'
csv_text = File.read(Rails.root.join('lib', 'seeds', 'Make.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1', :col_sep => ',' )
csv.each do |row|
  t = BaseMake.new
  t.MakeID = row['MakeID']
  t.MakeName = row['MakeName']
  t.save
  puts "#{t.MakeID}, #{t.MakeName} saved"
end

puts "There are now #{BaseMake.count} rows in the Base Make table"


require 'csv'
csv_text = File.read(Rails.root.join('lib', 'seeds', 'Model.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1', :col_sep => ',' )
csv.each do |row|
  t = BaseModel.new
  t.ModelID = row['ModelID']
  t.ModelName = row['ModelName']
  t.VehicleTypeID = row['VehicleTypeID']
  t.save
  puts "#{t.ModelID}, #{t.ModelName}, #{t.VehicleTypeID} saved"
end

puts "There are now #{BaseModel.count} rows in the Base Model table"

 
require 'csv'
csv_text = File.read(Rails.root.join('lib', 'seeds', 'Sub_Model.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1', :col_sep => ',' )
csv.each do |row|
  t = BaseSubModel.new
  t.SubModelID = row['SubModelID']
  t.SubModelName = row['SubModelName']
  t.save
  puts "#{t.SubModelID}, #{t.SubModelName} saved"
end

puts "There are now #{BaseSubModel.count} rows in the Base Sub Model table"
