class AddNameIndexToDirectors < ActiveRecord::Migration[6.0]
  def change
    add_index :directors, :name
  end
end
