# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'
require 'json'

puts 'Cleaning up database...'
Moviee.destroy_all
puts 'Database cleaned'

url = 'http://tmdb.lewagon.com/movie/top_rated'
20.times do |i|
  puts "Importing movies from page #{i + 1}"
  moviees = JSON.parse(URI.open("#{url}?page=#{i + 1}").read)['results']
  moviees.each do |moviee|
    puts "Creating #{moviee['title']}"
    base_poster_url = 'https://image.tmdb.org/t/p/original'
    Moviee.create(
      title: moviee['title'],
      overview: moviee['overview'],
      poster_url: "#{base_poster_url}#{moviee['backdrop_path']}",
      rating: moviee['vote_average']
    )
  end
end
puts 'Movies created'
