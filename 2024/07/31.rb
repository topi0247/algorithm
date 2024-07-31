# require 'benchmark'

# N = 100000
# M = 100000
# pattern = 0
# unless (N-M).abs > 2 || N == 0 || M == 0
#   result = Benchmark.realtime do

#   end
# end

# puts pattern
# puts "ベンチマーク：#{result}s"


# N, M = gets.split.map(&:to_i)
# pattern = 0
# unless (N-M).abs > 2 || N == 0 || M == 0
#   pattern = (1..N).inject(:*) * (1..M).inject(:*)
#   pattern *= 2 if N - M == 0
#   pattern %= (10**9 + 7)
# end

# puts pattern
