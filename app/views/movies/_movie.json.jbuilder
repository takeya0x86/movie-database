json.extract! movie, :id, :title, :release_date, :director_id, :series_id, :running_time, :original_title, :english_title, :created_at, :updated_at
json.url movie_url(movie, format: :json)
