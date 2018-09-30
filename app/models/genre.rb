class Genre < ApplicationRecord
  has_many :artists
  has_many :songs
  has_many :albums

  validates :name, presence: true, uniqueness: true
end
