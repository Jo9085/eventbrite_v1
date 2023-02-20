class User < ApplicationRecord
    validates :description, presence: true
    validates :first_name, presence: true
    validates :last_name, presence: true

    has_many :events
    has_many :attendances
    has_many :events, through: :attendances
end
