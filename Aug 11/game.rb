movies = {
  StarWars: 4.8, 
  Divergent: 4.7
  }

puts "What would you like to do? "

choice = gets.chomp

case choice
when "add"
  puts "What movie would you like to add? "
  title = gets.chomp
  title = title.intern
  
  if movies[title] != nil 
    puts "It is already on our list!"
  
else 
    puts "What rating does the movie have? "
    rating = gets.chomp
    rating = rating.to_i
    movies[title] = rating
end 

  puts "What rating does the movie have? "
  rating = gets.chomp
  rating = rating.to_i
  
when "update"
  puts "Updated!"
when "display"
  puts "Movies!"
when "delete"
  puts "Deleted!"
else
  puts "Error!"
end