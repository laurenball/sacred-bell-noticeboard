class Notice < ApplicationRecord
  has_many :sessions

  validates :title, presence: true
  validates :sessions, presence: true
  validates :openings, presence: true
end
