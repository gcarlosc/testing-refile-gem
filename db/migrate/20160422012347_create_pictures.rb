class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :file_id
      t.string :file_filename
      t.string :file_size
      t.references :imageable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
