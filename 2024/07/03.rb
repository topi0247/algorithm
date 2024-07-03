N, K = gets.split
D = gets.split.map(&:to_i)
not_exist = [0,1,2,3,4,5,6,7,8,9].difference(D)

length = N.length
str_array = N.clone
length.times do |i|
  not_exist.each do |j|
    if i == 0 && j == 0
      next
    end
    diff = str_array.clone
    diff[i] = j.to_s
    if diff.to_i >= N.to_i
      str_array = diff
      break
    end
  end
end

str_array = str_array.chars
if (str_array & D.map(&:to_s)).size > 0
  min = not_exist.min
  if min == 0
    zero_expect = not_exist[1].to_s
    str_array[0] = zero_expect
    str_array.fill(min.to_s,1..length-1)
  else
    str_array.fill(min.to_s,0..length-1)
  end
  str_array << min
end

puts str_array.join.to_i
