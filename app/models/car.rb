class Car < ApplicationRecord
  has_many :service_entries
  
  has_many :base_years
  
  belongs_to :user


end
