hash = Hash.new{|h, k| h[k] = 0}

N,K = gets.split.map(&:to_i)
N.times do |i|
  a, b = gets.split.map(&:to_i)
  hash[a] += b
end
array = hash.sort

count = 0
answer = 0
array.each do |v|
  count += v[1]
  if K <= count
    answer = v[0]
    break
  end
end

puts answer
