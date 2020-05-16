class CreateDirectors < ActiveRecord::Migration[6.0]
  def change
    create_table :directors, id: :uuid do |t|
      t.string :name, null: false
      t.string :original_name

      t.timestamps
    end
  end
end
