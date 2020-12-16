for number in (1 .. 100)
  if number % 3 == 0 && number % 5 == 0
    output = "FizzBuzz"
  elsif number % 3 == 0
    output = "Fizz"
  elsif number % 5 == 0
    output = "Bizz"
  else
    output = number
  end
  puts output
end