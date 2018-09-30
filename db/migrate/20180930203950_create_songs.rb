class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :name
      t.references :genre, foreign_key: true
      t.references :album, foreign_key: true
      t.integer :rating
      t.string :href
      t.references :artist, foreign_key: true
      t.boolean :explicit
      t.integer :track_number

      t.timestamps
    end
  end
end
