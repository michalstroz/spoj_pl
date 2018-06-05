#!/usr/bin/env ruby


require 'benchmark'
require 'prime'

repeat = 500000
num = 123615236587

# def is_prime?(n)
#   return false if n < 2
#   (2..Math.sqrt(n).floor).none?{ |i| (n % i).zero? }
# end

# def is_prime2?(n)
#   return false if n < 2
#     i, range = 2, Math.sqrt(n).floor
#     while 1
#       if (n % i) == 0
#         return false
#         break
#       end
#       break if i > range
#       i += 1
#     end
#    true
# end
#
def is_prime3?(n)
  return false if n < 2
   i, range = 2, Math.sqrt(n).floor
   while i <= range
     return false if (n % i) == 0
     i += 1
   end
   true
end
#
gets.to_i.times { puts is_prime3?(gets.to_i) ? "TAK" : "NIE" }
#
#
# Benchmark.bm do |benchmark|
#
#   benchmark.report("is_prime2") do
#     repeat.times do
#       is_prime2?(num)
#     end
#   end
#
#   benchmark.report("is_prime3") do
#     repeat.times do
#       is_prime3?(num)
#     end
#   end
# end

# i, n = 0, gets.to_i
# while i < n
#   flag = "TAK"
#   number = gets.to_i
#   puts "NIE" if number < 2
#   j, range = 2, Math.sqrt(number).floor
#   while j <= range
#     if (number % j) == 0
#       flag = "NIE"
#     end
#     if j == range
#       puts flag
#     end
#     j += 1
#   end
#
#   i += 1
# end
