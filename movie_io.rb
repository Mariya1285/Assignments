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
			
			aFile = File.new("input.txt", "a+")
				if aFile
				   

				  # content = aFile.sysread(20)  #Reads the first 20 chars of the file(including spaces)
				  # puts content
				  # puts aFile.gets		#Reads the whole of the contents of the file(including spaces)


				   # aFile.syswrite($movies)   # stores the hash.. how to retrieve back the hash from file?
				   # puts aFile.gets      #doesn't work along
  
				   aFile.syswrite($movies.store(movie_rating, movie_name))
				   aFile.syswrite($movies.store(movie_name, movie_rating))

				   

				else
				   puts "Unable to open file!"
				end

				aFile.close
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
		begin
			## displaying movie-name and movie-rating from the hash	sorted according to the movie rating(high to low)	
					#	begin
							#	Hash[$movies.sort_by{|k,v| v}].each do |key,value|
								#puts "Movie Name : ", key , "Rating : ", value
							#end
							
							## success msg to user and ask for choice:
							#	puts "please press 'N' to exit and 'B' to enter the main menu"
							#	continue_flag = gets.chomp.downcase
							
					#end 

			aFile = File.new("input.txt", "r")
				if aFile
				   
					arr = IO.readlines("input.txt")
					puts len = arr.length
					i = 0

					
					movie_names = Array.new(100)
					movie_ratings = Array.new(100)

					temp= 0
					name_index = 0
					temp1=1
					rating_index = 0
					
					begin
						 #	print "Movie Name: #{arr[temp]}"
				
							movie_names[name_index] = arr[temp]
							name_index += 1
						  temp = temp+2
					end	 while name_index <= len-1

					begin
							#puts "Movie Rating: #{arr[temp1]}"   
							movie_ratings[rating_index] = arr[temp1]
							rating_index += 1
							temp1 = temp1+2

					end   while rating_index <= len

					begin
						 
							 print "Movie Name: #{movie_names[i]}"
							 puts "Movie Rating: #{movie_ratings[i]}"   
								i+=1
						
					end	 while i < arr.length/2

				# print "Movie Name: #{arr[i]}"
				# puts "Movie Rating: #{arr[i+1]}"   

				else
				   puts "Unable to open file!"
				end
		end

		if continue_flag == 'b'     #back to main menu
			movie_list							#calling the function again(recursion)
		end	

	else

		puts "Invalid choice"
		
	end

end

movie_list