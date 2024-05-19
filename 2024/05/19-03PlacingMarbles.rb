# 私が書いたやつ
s_hash = gets.chomp.split('').group_by(&:itself).map{ |key,value| [key, value.count]}.to_h

puts s_hash['1'] ||= 0

# あたま良い回答
# s = gets.split("").map(&:to_i)
# puts s.count(1)