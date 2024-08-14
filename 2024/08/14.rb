S = gets.chomp

first = S.index('A') - 1
last = S.rindex('Z')

puts last - first
