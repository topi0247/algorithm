N = gets.chomp.to_i
An = gets.chomp.split.map(&:to_i)

even = true
count = 0
while even
  result = []
  N.times do |i|
    temp = An[i]/2
    even = temp.even?
    break unless even
    result << temp
  end
  unless even
    count += 1
  end
end

puts count
