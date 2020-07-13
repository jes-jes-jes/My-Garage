class BaseModel < ApplicationRecord
  has_many :cars
  has_many :bases
  has_many :base_makes
  has_many :base_sub_models
  belongs_to :user
end
