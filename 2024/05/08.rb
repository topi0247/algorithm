# a = gets.to_i
# b = gets.to_i
# x = gets.to_i

# answer = (a..b).inject(0) {|count,i| count += 1 if i % x == 0; count}

# puts answer

abx = gets.split
a = abx[0].to_i
b = abx[1].to_i
x = abx[2].to_i

answer = (b/x) - (a/x)
if a % x == 0
  answer += 1
end
puts answer