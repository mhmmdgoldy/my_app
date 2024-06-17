class User < ApplicationRecord
    has_many :articles
    validates :full_name, presence: true
    validates :email, presence: true, uniqueness: true
end
