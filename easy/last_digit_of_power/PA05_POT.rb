#!/usr/bin/env ruby

arr_of_lasts = [[0,0,0,0], [1,1,1,1], [2,4,8,6], [3,9,7,1], [4,6,4,6],
           [5,5,5,5], [6,6,6,6], [7,9,3,1], [8,4,2,6], [9,1,9,1]]


gets.to_i.times do
  power = gets.split(" ").map{ |v| v.to_i }
  puts arr_of_lasts[power[0] % 10][(power[1] - 1) % 4]
end
