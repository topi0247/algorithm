N, K = gets.chomp.split.map(&:to_i)

bingo_card = []
N.times do
  bingo_card << gets.chomp.split.map(&:to_i)
end

hits = gets.chomp.split.map(&:to_i)
hits.each do |hit|
  bingo_card = bingo_card.flatten.map{|x| x == hit ? 0 : x}
end

hits_card = bingo_card.each_slice(N).to_a
hits_count = 0
xy_count = 0
yx_count = 0
N.times do |i|
  hits_count += 1 if hits_card[i].count(0) == N
  xy_count += 1 if hits_card[i][i] == 0
  yx_count += 1 if hits_card[i][N-1-i] == 0
end
hits_count += 1 if xy_count == N
hits_count += 1 if yx_count == N

N.times do |i|
  y_count = 0
  N.times do |j|
    y_count += 1 if hits_card[j][i] == 0
  end
  hits_count += 1 if y_count == N

end

puts "#{hits_count}\n"
