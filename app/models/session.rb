class Session < ApplicationRecord
    has_many :users
    # has_many :users, :through => :session
end
