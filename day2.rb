# day two, part one: add and subtract from cartesian coordinates, then multiply the final results from each axis
# variables declared as global variables, for both parts
@temp_x = 0
@temp_y = 0
@tempx = 0
@tempy = 0
@tempz = 0

# create the code block that performs the various calculations
# take each incoming line and split on whitespace. Take each array entry and assign to the specific temporary variables
# make sure that the integer is defined as such
# perform calculations based on instructions as input
def pos_neg(line)
templine = line.split
tempDirection = templine[0]
tempValue = templine[1].to_i
	case tempDirection
		when "forward"
			@temp_x += tempValue
		when "back"
			@temp_x -= tempValue
		when "down"
			@temp_y += tempValue
		when "up"
			@temp_y -= tempValue
	end
end

#read each line in the file sequentially
File.foreach("day2_values.txt") {|line| pos_neg(line)}

#perform the final calculation
final = @temp_x * @temp_y
puts final

#day two part two: use three dimensional coordinates and calculations

#same idea as first part: take incoming line, split on whitespace and assign each bit to the variables
#define the number as a number
#perform the calculations based on the input instructions
#the Y variable is only directly acted on when moving forward
def pos_neg_3D(line)
templine = line.split
tempDirection = templine[0]
tempValue = templine[1].to_i
	case tempDirection
		when "forward"
			@tempx += tempValue
			@tempy += (@tempz * tempValue)
		when "back"
			@tempx -= tempValue
		when "down"
			@tempz += tempValue
		when "up"
			@tempz -= tempValue
	end
end

#read each line into an array
File.foreach("day2_values.txt") {|line| pos_neg_3D(line)}

#perform final calculation
final2 = @tempx * @tempy
puts final2
