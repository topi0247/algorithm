N, K, L = gets.split.map(&:to_i)
load_array = Hash.new{ |h,k| h[k]=[] }
K.times do
  a,b = gets.split.map(&:to_i)
  load_array[a] << b
  load_array[b] << a
end

rail_array = Hash.new{ |h, k| h[k] = [] }
L.times do
  a,b = gets.split.map(&:to_i)
  rail_array[a] << b
  rail_array[b] << a
end

def compact_load array
  sort_load_array =  array.sort{ |a,b| b[1].length <=> a[1].length }
  sort_load_array.each do |num|
    num.flatten!
  end
  sort_load_array.length.times do |i|
    current = sort_load_array[i]
    next if current == nil
    next_index = i + 1
    next if next_index == sort_load_array.length || sort_load_array[next_index] == nil
    new_array = sort_load_array[next_index..-1]
    new_array.each_with_index do |num, j|
      if (current - num).size < current.size
        sort_load_array[i] += num
        sort_load_array[i + j + 1] = nil
        sort_load_array[i].uniq!
      end
    end
  end
  sort_load_array.compact!
end

result_array = (compact_load(load_array) + compact_load(rail_array)).flatten.sort
puts result_array.tally.values.join(' ')
# 不正解です
