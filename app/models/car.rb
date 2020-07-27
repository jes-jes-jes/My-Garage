class Car < ApplicationRecord
  has_many :service_entries
  
  belongs_to :base_years
  belongs_to :base_makes
  belongs_to :base_models
  belongs_to :base_sub_models
  
  belongs_to :user


end
