class Movie < ApplicationRecord
  belongs_to :director, optional: true
  belongs_to :series, optional: true
  validates :title, presence: true
  validates :release_date, presence: true
end
