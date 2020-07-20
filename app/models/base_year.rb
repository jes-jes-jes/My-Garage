class BaseYear < ApplicationRecord
  has_many :cars
  has_many :base_makes
  has_many :base_models
  has_many :base_sub_models
end
