# N = gets.chomp.to_i

# array = []
# (N*2).times do |i|
#   array << gets.chomp.to_i
# end
# check_array = []
# mix = 0
# array.each_with_index do |num, i|
#   next if check_array.include?(num)

#   check_array << num
#   end_index = array.rindex(num)
#   mix += end_index - i - 1
# end
# puts "#{mix}\n"

# require 'benchmark'
# array = [*1..70_000] + [*1..70_000]
# array_reverse = array.shuffle.reverse
# check_array = []
# mix = 0
# result = Benchmark.realtime do
#   array_reverse.each_with_index do |num, i|
#     next if check_array.include?(num)

#     check_array << num
#     end_index = array_reverse.rindex(num)
#     mix += end_index - i - 1
#   end
# end
# puts "#{mix}\n"
# puts "処理概要 #{result}s"


# array = []
# (N*2).times do
#   array.push(gets.chomp.to_i)
# end
# require 'benchmark'
# array = [*1..70_000] + [*1..70_000]
# # array = [*1..5] + [*1..5]
# array = array.shuffle
# hash = Hash.new{|h, key| h[key] = []}
# mix = 0
# result = Benchmark.realtime do
#   array.each_with_index{|value, index| hash[value] << index}
#   hash.each do |k, v|
#     abs = (v[0] - v[1]).abs
#     mix += abs + 1
#   end
# end
# puts mix
# puts "処理概要 #{result}s"


N = gets.chomp.to_i
hash = Hash.new{|h, key| h[key] = []}
(N*2).times do |i|
  num = gets.chomp.to_i
  hash[num] << i
end

mix = 0
hash.each do |k, v|
  abs = v[1] - v[0]
  mix += abs - 1
end

puts "#{mix}\n"
