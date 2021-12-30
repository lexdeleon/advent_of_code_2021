# day one, part one: count how many times the sequential value increases

file = File.open("day1_values.txt")

#array must be integers for proper comparison
file_data = file.readlines.map{|value| value.to_i}

# example one: shows more steps, suitable for more manipulation for each if statement
i = 0

file_data[0...-1].each_with_index do |element,index| 
	if file_data[index] < file_data[index + 1]
		i += 1
	end
end

puts i

# example two: uses built ins to have a simple one and done use

puts "#{file_data.each_cons(2).count { |first,second| first < second } }"

# day one, part two: count how many times the sequential sum of three numbers increases 
# uses same input, continuing using the same input array of integers

# example two format because lazy

data_sums = file_data.each_cons(3).map{|one,two,three| one + two + three}.to_a

puts "#{data_sums.each_cons(2).count {|a,b| a < b } } "