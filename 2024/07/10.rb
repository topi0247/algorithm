A,B,C,D = gets.split.map(&:to_i)

rect1 = A * B
rect2 = C * D

puts rect1 < rect2 ? rect2 : rect1
