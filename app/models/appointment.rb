# This class is linked to the appointments table
class Appointment < ApplicationRecord
  belongs_to :doctor, dependent: :destroy
  belongs_to :patient, dependent: :destroy
  belongs_to :city
end
