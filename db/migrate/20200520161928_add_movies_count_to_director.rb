class AddMoviesCountToDirector < ActiveRecord::Migration[6.0]
  def change
    add_column :directors, :movies_count, :integer, null: false, default: 0
    add_index :directors, :movies_count
  end
end
