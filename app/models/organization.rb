class Organization < ApplicationRecord
  has_many :people
  has_one :address, required: false
  validates_uniqueness_of :name
end
