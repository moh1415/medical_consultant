class Session < ApplicationRecord
    has_many :users
    has_one_attached :file
    validates :title, presence: true
    validates :description, presence: true
    # has_many :users, :through => :session
end
