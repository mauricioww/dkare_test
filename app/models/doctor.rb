class Doctor < ApplicationRecord
    # A doctor can see several patients
    has_many :appointments, dependent: :destroy

end
