class Patient < ApplicationRecord
  has_many :appointments
  has_many :doctors, through: :appointments

  def doctor_name
      self.doctor.name
  end
  
  def patient_name
      self.patient.name
  end
end
