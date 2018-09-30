class Artist < ApplicationRecord
  belongs_to :genre
  has_many :songs
  has_many :albums

  validates :name, :genre, presence: true
  validates :name, uniqueness: true
  validates :popularity, numericality: {only_integer: true}
end
