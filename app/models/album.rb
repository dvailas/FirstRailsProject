class Album < ApplicationRecord
  belongs_to :genre
  belongs_to :artist
  has_many :songs

  validates :name,:artist,:genre, presence: true
  validates :popularity, numericality: {only_integer: true}
end
