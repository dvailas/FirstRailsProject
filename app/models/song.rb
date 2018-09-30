class Song < ApplicationRecord
  belongs_to :genre
  belongs_to :album
  belongs_to :artist

  validates :name, :artist, :rating , :genre, :artist, presence: true
  validates :rating, numericality: {only_integer: true}
end
