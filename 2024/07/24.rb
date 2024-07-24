# 飴ちゃんたち
candies = gets.split.map(&:to_i)
# 一番数が多い飴ちゃん
max_count = candies.max
# 一番多い飴ちゃんをないない
candies.delete(max_count)

# 一番多い飴ちゃんの個数と他の合計が一致するかどうか
puts max_count == candies.sum ? 'Yes' : 'No'
