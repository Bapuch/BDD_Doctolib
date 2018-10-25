# This class is linked to the patients table
class Patient < ApplicationRecord
  has_many :appointments
  has_many :doctors, through: :appointments
  belongs_to :city
end
