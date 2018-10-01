class Genre < ApplicationRecord
  has_many :artists, :dependent => :delete_all
  has_many :songs, :dependent => :delete_all
  has_many :albums, :dependent => :delete_all


  validates :name, presence: true, uniqueness: true
end
