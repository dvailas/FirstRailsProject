class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :album_type
      t.references :genre, foreign_key: true
      t.integer :popularity
      t.string :image
      t.string :href
      t.references :artist, foreign_key: true
      t.string :releasedate

      t.timestamps
    end
  end
end
