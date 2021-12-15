movies = {
  the_grinch: 4,
  harry_potter: 3,
  let_it_snow: 1
}

puts "What would you like to do?"
puts "Type add, update, display, or delete"
choice = gets.chomp.downcase

case choice
  when "add"
    puts "What movie would you like to add? "
    title = gets.chomp.downcase
    puts "What rating for that movie? Ratings 1-4 "
    rating = gets.chomp.to_i
    if movies[title.to_sym].nil?
      movies[title.to_sym] = rating
    else
      puts "That movie already exists"
    end
  when "update"
    puts "What movie do you want to update? "
    title = gets.chomp.downcase
    if movies[title.to_sym].nil?
      puts "This movie isn't in our list."
    else
      puts "What is the new rating (1-4)? "
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
    end
  when "display"
    movies.each do |movie, rating|
      puts "#{movie}: #{rating}"
    end
  when "delete"
    puts "Which title would you like to delete? "
    title = gets.chomp.downcase
    if movies[title.to_sym].nil?
      puts "Error, that movie is not entered."
    else
      movies.delete(title.to_sym)
    end
  else
    puts "Error!"
end