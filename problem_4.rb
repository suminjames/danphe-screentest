def convert_number number, from, to
  if from == "decimal" && to == "octal"
    output = decimal_conversion number, 8
  elsif from == "decimal" && to == "binary"
    output = decimal_conversion number, 2
  end
  puts output
end

def decimal_conversion number, divisor
  output_remainder = []
  while (number >= divisor)
    remainder = number % divisor
    number    = number / divisor
    output_remainder << remainder
    if number < divisor
      output_remainder << number
    end
  end
  output_remainder.reverse.join()
end

convert_number 42, "decimal", "octal"
convert_number 42, "decimal", "binary"