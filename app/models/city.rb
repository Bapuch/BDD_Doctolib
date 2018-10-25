# This class is linked to the cities table
class City < ApplicationRecord
  has_many :doctors
  has_many :patients
  has_many :appointments
end
