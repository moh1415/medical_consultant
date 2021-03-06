class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        #  has_many :sessions
         has_many :session
         validates :fullname, presence: true
         validates :phone_number, presence: true
end
