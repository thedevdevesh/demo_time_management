class Worklog < ApplicationRecord
  belongs_to :user
  validates :date, presence: true
  validates :hours, presence: true, numericality: { greater_than: 0 }
  validates :notes, presence: true
end
