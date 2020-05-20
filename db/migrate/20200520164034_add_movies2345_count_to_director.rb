class AddMovies2345CountToDirector < ActiveRecord::Migration[6.0]
  def change
    add_column :directors, :movie2s_count, :integer, null: false, default: 0
    add_index :directors, :movie2s_count
    add_column :directors, :movie3s_count, :integer, null: false, default: 0
    add_index :directors, :movie3s_count
    add_column :directors, :movie4s_count, :integer, null: false, default: 0
    add_index :directors, :movie4s_count
    add_column :directors, :movie5s_count, :integer, null: false, default: 0
    add_index :directors, :movie5s_count
  end
end
