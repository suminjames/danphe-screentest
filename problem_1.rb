# Using if else statement
def find_greatest_1 x, y, z
  if x > z && x > y
    greatest_number = x
  elsif y > z && y > x
    greatest_number = y
  else
    greatest_number = z
  end
  puts "#{greatest_number} is the greatest number."
end

find_greatest_1 400, 50, 10

# Using ternary operation
def find_greatest x, y, z
  greatest_number = (x > y && x > z) ? x : ((y > z && y > x) ? y : z)
  puts "#{greatest_number} is the greatest number."
end

find_greatest 400, 500, 1000