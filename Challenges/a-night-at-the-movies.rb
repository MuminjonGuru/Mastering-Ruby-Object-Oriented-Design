movies = {
	Memento: 3,
  Primer: 4,
  Ishtar: 1
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."
choice = gets.chomp.downcase

case choice
  when "add"
  	puts "Title of a Movie: "
  	title = gets.chomp
  	if movies[title.to_sym].nil?
      puts "What's the rating? (Type a number 1 to 5)"
  		rating = gets.chomp
    	movies[title.to_sym] = rating.to_i  
      puts "#{title} has been added with a rating of #{rating}."
    else
       puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
    end
  when "update"
  	puts "Title of a Movie: "
  	title = gets.chomp
  	if movies[title.to_sym].nil?
      puts "movie is not in the hash, error."
    else
      puts "What's the rating? (Type a number 1 to 5)"
  		rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "#{title} has been updated with new rating of #{rating}."
    end
  when "display"
  	movies.each { |key, value| puts "#{key}: #{value}" 
      }
  when "delete" 
  	puts "Title of a Movie: "
  	title = gets.chomp
  	if movies[title.to_sym].nil?
      puts "movie is not in the hash, error."
    else
      movies.delete(title.to_sym)
    end
	else
  	puts "Error!"
end

puts movies
  
