class Session < ApplicationRecord
  belongs_to :notice

  validates :date, presence: true
  validates :time, presence: true
  validates :location, presence: true
end
