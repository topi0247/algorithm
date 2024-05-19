ab = gets.chomp.split.map(&:to_i).inject(:*)

puts ab.even? ? 'Even' : 'Odd'