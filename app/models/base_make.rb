class BaseMake < ApplicationRecord
  belongs_to :base_year 
  has_many :cars

	User.select(:base_year).distinct.distinct(false)
end
