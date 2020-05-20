class Director < ApplicationRecord
  has_many :movies
  has_many :movie2s, class_name: 'Movie', foreign_key: "director2_id"
  has_many :movie3s, class_name: 'Movie', foreign_key: "director3_id"
  has_many :movie4s, class_name: 'Movie', foreign_key: "director4_id"
  has_many :movie5s, class_name: 'Movie', foreign_key: "director5_id"
  validates :name, presence: true

  def movies_size_all
    movies.size + movie2s.size + movie3s.size + movie4s.size + movie5s.size
  end
end
