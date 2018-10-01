class Song < ApplicationRecord
  belongs_to :genre
  belongs_to :album
  belongs_to :artist

  validates :name, :artist, :rating , :genre,  presence: true
  validates :rating, :track_number, numericality: {only_integer: true}
end
