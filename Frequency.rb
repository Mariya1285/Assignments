puts "Enter the string"
string_to_iterate = gets.downcase

$a_numeric_value=97
$z_numeric_value=122

begin
	
	$alphabet = $a_numeric_value.chr
	print("#{$alphabet} => ")
	puts string_to_iterate.count($alphabet)
	$a_numeric_value+=1

end while $a_numeric_value<= $z_numeric_value
