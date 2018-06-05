#!/usr/bin/env ruby

require 'benchmark'

gets.to_i.times do
  fct = gets.to_i
  puts fct < 10 ? ['0 1', '0 1', '0 2', '0 6', '2 4', '2 0', '2 0', '4 0', '2 0', '8 0'][fct] : '0 0'
end

# i = 0

# Benchmark.bm do |benchmark|
#
#   benchmark.report("1_zapis") do
#     100000.times do
#       fct = i
#       fct < 10 ? arr[fct] : '0 0'
#       i += 1
#     end
#   end
#
#   benchmark.report("2_zapis") do
#     100000.times do
#       fct = i
#       fct < 10 ? ['0 1', '0 1', '0 2', '0 6', '2 4', '2 0', '2 0', '4 0', '2 0', '8 0'][fct] : '0 0'
#       i += 1
#     end
#   end
# end
