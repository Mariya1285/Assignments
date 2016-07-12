    fname, sname, city = ''
    cost = 0.0 
    rate = 0.0
    tax = 0.0

    # open the csv file
      f = File.open("sales.csv", "r+")
      fwrite = File.open("sales1.csv", 'a')
      return unless  f
        
    # loop through each record in the csv file, adding
    # each record to our array.
      f.each_line { |line|

    # each line has fields separated by commas, so split those fields
      fields = line.split(',')
        
      fname = fields[0].strip
      sname = fields[1].strip
      city = fields[2].strip
      cost = fields[3].strip.to_f
      rate = fields[4].strip.to_f
      tax = cost * rate

      doc = "#{fname}, #{sname}, #{city}, #{cost}, #{rate}, #{tax}"
      
      fwrite.puts doc

      }
    
    File.delete("sales.csv")
    File.rename( "sales1.csv", "sales.csv" )
    fwrite.close
    f.close
      
