class BaseMake < ApplicationRecord
  belongs_to :base_year 
  has_many :cars

end
