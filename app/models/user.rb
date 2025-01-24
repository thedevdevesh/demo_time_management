class User < ApplicationRecord
    has_many :worklogs, dependent: :destroy

    validates :name, presence: true
    validates :preferred_working_hour_per_day, presence: true, numericality: { less_than_or_equal_to: 16 }
end
