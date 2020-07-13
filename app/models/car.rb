class Car < ApplicationRecord
  has_many :service_entries
  
  belongs_to :bases
  belongs_to :base_makes
  belongs_to :base_models
  belongs_to :base_sub_models
  
  belongs_to :user

  validates :year, inclusion: { in: ['2019', '2018', '2017', '2016'] }
  validates :make, inclusion: { in: ['Audi', 'BMW', 'Jaguar', 'Land Rover', 'Mercedes-Benz', 'Mini', 'Volkswagen', 'Volvo']}
  validates :model, inclusion: { in: ['430i', '530e', '750i'] }


  YEAR_OPTIONS = [
  	['2019', '2019'],
	['2018', '2018'],
	['2017', '2017'],
	['2016', '2016']
  ]

  MAKE_OPTIONS = [
  	['Audi', 'Audi'],
	['BMW', 'BMW'],
	['Jaguar', 'Jaguar'],
	['Land Rover', 'Land Rover'],
	['Mercedes-Benz', 'Mercedes-Benz'],
	['Mini', 'Mini'],
	['Volkswagen', 'Volkswagen'],
	['Volvo', 'Volvo']
  ]

  MODEL_OPTIONS = [
  	['430i', '430i'],
	['530e', '530e'],
	['750i', '750i'],
  ]


end
