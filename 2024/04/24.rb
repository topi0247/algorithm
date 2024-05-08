N = gets.to_i
S = gets.chomp
answer = ''
N.times do |i|
  if S[i] == '('
    answer += '('
  else
    group = answer.split('').group_by(&:itself).map{ |key,value| [key,value.count]}.to_h
    if group['('] == group[')']
      answer = "(#{answer})"
    else
      answer += ')'
    end
  end
end

group = answer.split('').group_by(&:itself).map{ |key,value| [key,value.count]}.to_h
if group[')'] < group['(']
  count = group['('] - group[')']
  answer += ')' * count
end

puts answer