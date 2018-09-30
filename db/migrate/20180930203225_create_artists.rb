class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.references :genre, foreign_key: true
      t.integer :popularity
      t.string :image
      t.string :href

      t.timestamps
    end
  end
end
