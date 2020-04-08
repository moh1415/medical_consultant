class Session < ApplicationRecord
    has_many :users
<<<<<<< HEAD
    has_one_attached :file
    validates :title, presence: true
    validates :description, presence: true
=======
>>>>>>> parent of 6f538ff... add upload file for the patient as medical report
    # has_many :users, :through => :session
end
