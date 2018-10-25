# This class is linked to the doctors table
class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  belongs_to :city
end
