class Movie < ApplicationRecord
  belongs_to :director, optional: true
  belongs_to :director2, optional: true, class_name: 'Director'
  belongs_to :director3, optional: true, class_name: 'Director'
  belongs_to :director4, optional: true, class_name: 'Director'
  belongs_to :director5, optional: true, class_name: 'Director'
  belongs_to :series, optional: true, counter_cache: true
  validates :title, presence: true
  validates :release_date, presence: true
end
