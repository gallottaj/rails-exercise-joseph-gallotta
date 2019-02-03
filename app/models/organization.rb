class Organization < ApplicationRecord
  has_many :people
  has_one :address
end
