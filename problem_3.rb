def input string
  string = string.gsub(' ', '')

  words_count = {}
  for letter in string.split('')
    if words_count.keys.include? letter
      words_count[letter] = words_count[letter] + 1
    else
      words_count[letter] = 1
    end
  end
  puts words_count
end

input "hello how are you"