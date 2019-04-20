class Notice < ApplicationRecord
  has_many :sessions

  validates :title, presence: true
  validates :openings, presence: true

  accepts_nested_attributes_for :sessions
end
