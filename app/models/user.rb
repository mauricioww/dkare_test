class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # A patient can have any number of reports, but when the user does not 
  # belong to diagnostikare its reports can be deleted
  has_many :reports, dependent: :destroy

  # Same as reports
  has_many :appointments, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
