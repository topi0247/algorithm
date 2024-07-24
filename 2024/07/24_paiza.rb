N, M = gets.split.map(&:to_i)
load_array = []
N.times do
  load = gets.split.map(&:to_i)
  load_array << load
end

X = gets.to_i
load_map = []
X.times do
  load = gets.split.map(&:to_i)
  load_map << load.map{ |v| v - 1 }
end

money_sum = 0
pre_x = 0
pre_y = 0
X.times do |num|
  load = load_map[num]
  x = load[0]
  y = load[1]
  money = load_array[x][y]
  money_pre = load_array[pre_x][pre_y]
  if x != pre_x && y != pre_y
    money_pre = load_array[x][pre_y]
  end

  add_money = (money - money_pre).abs
  if y == pre_y
    add_money = 0
  end
  money_sum += add_money
  pre_x = x
  pre_y = y
end

puts "#{money_sum}\n"
