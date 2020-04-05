class Doctor < ApplicationRecord
    has_many :session
    has_many :patients, through: :session
end
