class Notice < ApplicationRecord
  validates :title, presence: true
  validates :sessions, presence: true
  validates :openings, presence: true
end
