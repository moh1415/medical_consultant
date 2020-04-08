class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        #  has_many :sessions
         has_many :session
<<<<<<< HEAD
         validates :fullname, presence: true
         validates :phone_number, presence: true
=======
>>>>>>> parent of 6f538ff... add upload file for the patient as medical report
end
