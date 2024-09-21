# 問１
name = gets.chomp
MAX_LENGTH = 15

if name.length <= MAX_LENGTH
  puts 'OK'
else
  puts 'FALSE'
end

# 問２
ODEN_RANCKING = [
  '大根',
  '牛スジ',
  'はんぺん',
  'こんにゃく',
  'たまご',
  'ちくわぶ'
]

ranking_no = gets.to_i

if ranking_no <= 0 || ranking_no > 6
  puts 'とぴは大根が好き'
  return
end

puts ODEN_RANCKING[ranking_no - 1]
