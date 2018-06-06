#!/usr/bin/env ruby

gets.to_i.times do
  str = gets
  output = ''
  i = 0
  while i < str.size
    j = i + 1
    while str[i] == str[j]
      j += 1
    end
    substr_length = j - i
    substr_length > 2 ? output << (str[i] + substr_length.to_s) : output << str[i] * substr_length
    i = j
  end
  puts output
end
