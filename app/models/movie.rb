class Movie < ApplicationRecord
  belongs_to :director, optional: true, counter_cache: true
  belongs_to :director2, optional: true, class_name: 'Director', counter_cache: :movie2s_count
  belongs_to :director3, optional: true, class_name: 'Director', counter_cache: :movie3s_count
  belongs_to :director4, optional: true, class_name: 'Director', counter_cache: :movie4s_count
  belongs_to :director5, optional: true, class_name: 'Director', counter_cache: :movie5s_count
  belongs_to :series, optional: true, counter_cache: true
  validates :title, presence: true
  validates :release_date, presence: true
end
