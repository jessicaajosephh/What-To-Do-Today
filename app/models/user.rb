class User < ActiveRecord::Base
    has_many :lists
    has_many :tasks, through: :lists
    has_secure_password

    validates :name, presence: true
    validates :username, presence: true, uniqueness: true
end