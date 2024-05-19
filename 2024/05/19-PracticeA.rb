a = gets.chomp.to_i
abc = gets.split.map(&:to_i).push(a)
s = gets.chomp

puts "#{abc.sum} #{s}"