class AddMoviesCountToSeries < ActiveRecord::Migration[6.0]
  def change
    add_column :series, :movies_count, :integer, null: false, default: 0
    add_index :series, :movies_count
  end
end
