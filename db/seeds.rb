# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Genre.delete_all


10.times do
  genre = Genre.new( :name  => Faker::Music.unique.genre)
  genre.save
  puts genre.inspect
#  50.times do
#    artist_name = Faker::Music.band + ' ' + Faker::Zelda.item + ' ' + Faker::Dota.player
#    artist = Artist.new(:name => artist, :genre => genre,:popularity => Faker::Number.number(5))
#    artist.save
#    puts artist.inspect
#    10.times do
#     album = Album.new(:name => Faker::Music.album , :artist => artist, :genre => genre, :popularity => Faker::Number.number(5), :releasedate => Faker::Date.backward(14600))
#      album.save
#      i = 1
#      num = 10
#      puts album.inspect
#      begin
#        song_name = Faker::Superhero.name + ' ' + Faker::Cannabis.buzzword
#       song = Song.new(:name => song_name, :genre => genre, :album => album, :artist => artist, :rating => Faker::Number.number(5),:track_number => i)
#        i +=1
#      end while i <= num
#    end
# end

end

