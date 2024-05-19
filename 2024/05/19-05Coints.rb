A = gets.chomp.to_i
B = gets.chomp.to_i
C = gets.chomp.to_i

# みんなの回答
a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i

count = 0

(0..a).each do |i|
  (0..b).each do |j|
    (0..c).each do |k|
      if 500 * i + 100 * j + 50 * k == x
        count += 1
      end
    end
  end
end