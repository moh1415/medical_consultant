class Session < ApplicationRecord
    has_many :users
    has_one_attached :file
    # has_many :users, :through => :session
end
