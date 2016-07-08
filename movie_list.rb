$movies = {}

def movie_list

	puts "Enter the choice of operation to be performed : "
	puts "Enter \'Add\' for adding a new movie"
	puts "Enter \'Delete\' for deleting a movie"
	puts "Enter \'Display\' for displaying movies"

	choice = gets.chomp.downcase

	case choice

	when "add"   #adding movie + rating in the hash
		continue_flag = 'y'
		
		begin
		
			puts "Movie Name:"
			movie_name = gets
			puts "Your rating"
			movie_rating = gets
			
			#storing movie-name and movie-rating in the hash
			$movies.store(movie_name, movie_rating)
			
			#success msg to user and ask for choice:
			puts "Stored Successfully..!"
			puts "please press 'Y' to enter more movies and 'N' to exit and 'B' to enter the main menu"
		  continue_flag = gets.chomp.downcase
			
		end while continue_flag == 'y'
		
		if continue_flag == 'b'   #back to main menu
			movie_list							#calling the function again(recursion)
		end	
		
	when "delete"   #delete case
		continue_flag = 'y'
		
		begin

			puts "enter the movie name to be deleted from the list:"
			movie_name = gets
			
			#deleting movie-name and movie-rating from the hash
			$movies.delete(movie_name)

			#success msg to user and ask for choice:
			puts "Deleted Successfully..!"
			puts "please press 'Y' to delete more movies and 'N' to exit and 'B' to enter the main menu"
			continue_flag = gets.chomp.downcase
		
		end while continue_flag == 'y'
		
		if continue_flag == 'b'			#back to main menu
			movie_list							#calling the function again(recursion)
		end	
		
	when "display"    #display case
			#displaying movie-name and movie-rating from the hash	sorted according to the movie rating(high to low)	
			begin
				Hash[$movies.sort_by{|k,v| v}].each do |key,value|
				puts "Movie Name : ", key , "Rating : ", value
				end
			
				#success msg to user and ask for choice:
				puts "please press 'N' to exit and 'B' to enter the main menu"
				continue_flag = gets.chomp.downcase
			
			end 
		
		if continue_flag == 'b'     #back to main menu
			movie_list							#calling the function again(recursion)
		end	

	else

		puts "Invalid choice"
		
	end

end

movie_list