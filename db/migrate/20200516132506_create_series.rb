class CreateSeries < ActiveRecord::Migration[6.0]
  def change
    create_table :series, id: :uuid do |t|
      t.string :name, null: false
      t.string :original_name

      t.timestamps
    end
  end
end
