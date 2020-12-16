def boxy number
  top_border    = ""
  bottom_border = ""
  middle_number = ""

  boxes         = (1 .. number)
  boxes.each do |num|
    top_border << " _"

    boxes.count == num ? middle_number << "|#{num}|" : middle_number << "|#{num}"
    bottom_border << " -"
  end
  puts top_border
  puts middle_number
  puts bottom_border
end

boxy 5