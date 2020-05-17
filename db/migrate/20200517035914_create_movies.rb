class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies, id: :uuid do |t|
      t.string :title, null: false
      t.date :release_date, null: false
      t.references :director, null: true, foreign_key: true, type: :uuid
      t.references :series, null: true, foreign_key: true, type: :uuid
      t.integer :running_time
      t.string :original_title
      t.string :english_title

      t.timestamps
    end
  end
end
