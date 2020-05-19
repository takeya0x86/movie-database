class AddDirectorToMovie < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :director2_id, :uuid
    add_index :movies, :director2_id
    add_foreign_key :movies, :directors, column: :director2_id
    add_column :movies, :director3_id, :uuid
    add_index :movies, :director3_id
    add_foreign_key :movies, :directors, column: :director3_id
    add_column :movies, :director4_id, :uuid
    add_index :movies, :director4_id
    add_foreign_key :movies, :directors, column: :director4_id
    add_column :movies, :director5_id, :uuid
    add_index :movies, :director5_id
    add_foreign_key :movies, :directors, column: :director5_id
  end
end
