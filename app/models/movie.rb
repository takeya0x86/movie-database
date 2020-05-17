class Movie < ApplicationRecord
  belongs_to :director
  belongs_to :series
  validates :title, presence: true
  validates :release_date, presence: true
end
