class AddNameIndexToSeries < ActiveRecord::Migration[6.0]
  def change
    add_index :series, :name
  end
end
