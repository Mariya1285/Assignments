

  # content = aFile.sysread(20)  #Reads the first 20 chars of the file(including spaces)
  # puts content
  # puts aFile.gets		#Reads the whole of the contents of the file(including spaces)


  # aFile.syswrite("ABCDEF")
 
  # arr = IO.readlines("sales.csv")
  # puts arr[0]
  # puts arr[0].to_a
   # puts arr[0]
  # puts arr[1]
  # puts arr[2]
   #puts arr[3]
  

     
      index = 0
      fname = Array.new
      sname = Array.new
      city = Array.new
      cost = Array.new
      rate = Array.new
      tax = Array.new

      # open the csv file
      f = File.open("sales.csv", "r+")
      if f
      # loop through each record in the csv file, adding
      # each record to our array.
      f.each_line { |line|

        # each line has fields separated by commas, so split those fields
        fields = line.split(',')
        
       fname[index] = fields[0]
       sname.push[index] = fields[1]
       city.push[index] = fields[2]
       cost.push[index] = fields[3]
       rate.push[index] = fields[4]
       tax.push[index] = fields[3].to_i * fields[4].to_i
       # f = File.open("sales.csv", 'a') {|f11| f11.puts tax[index]}

       index += 1
        # create a new Person
      #  p = Person.new

        # do a little work here to get rid of double-quotes and blanks
      #  p.last_name = fields[0].tr_s('"', '').strip
      #  p.first_name = fields[1].tr_s('"', '').strip
      #  p.city = fields[2].tr_s('"', '').strip
      #  people.push(p)
      }
      
      bookmark = 0
             
      begin
          
          puts fname[bookmark]
          puts sname[bookmark]
          puts city[bookmark]
          puts cost[bookmark]
          puts rate[bookmark]
          puts tax[bookmark]
    
          bookmark += 1

      end  while bookmark < fname.length
        
    f.close

  
    else
       puts "Unable to open file!"
    end   
      

        # f1 = File.open("sales1.csv", "w")
        bookmark = 0
 # doc = " "
        begin
         # f1.syswrite(fname[bookmark])
         # f1.syswrite(sname[bookmark])
         # f1.syswrite(city[bookmark])
         # f1.syswrite(cost[bookmark])
        #f1.syswrite(rate[bookmark])
        #  f1.syswrite(tax[bookmark])
    
          #arr = IO.readlines("sales.csv")
          #doc = doc + "#{fname[bookmark]} ,#{sname[bookmark]} ,#{city[bookmark]} ,#{cost[bookmark]} ,#{rate[bookmark]} ,#{tax[bookmark]} \n"
          #bookmark += 1
        puts doc ="#{fname[bookmark]} ,#{sname[bookmark]} ,#{city[bookmark]} ,#{cost[bookmark]} ,#{rate[bookmark]},#{tax[bookmark]}"
        
         File.open("sales1.csv", 'a') {|f| f.puts doc }
         #File.open("sales1.csv", 'a') {|f11| f11.puts tax[bookmark]}
        # File.write("sales1.csv",doc.to_s, "a")
          bookmark += 1
 end  while bookmark < fname.length


 
 


