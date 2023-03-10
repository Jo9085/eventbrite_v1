class Event < ApplicationRecord
    validates :start_date, 
        presence: true,
        comparison: {greater_than: Date.today}

    validates :duration,
        presence: true,
        numericality: {only_integer: true, greater_than: 0}

    validates :title,
        presence: true,
        length: {in: 5..140}

    validates :description,
        presence: true,
        length: {in:20..1000}

    validates :price,
        presence: true,
        numericality: {greater_than: 1, less_than: 1000}

    validates :location, presence:true
    
    
    belongs_to :user
    has_many :attendances
    has_many :users, through: :attendances


end
