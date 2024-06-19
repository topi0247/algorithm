# 開始時刻と待機時間の入力
A, B = gets.split.map(&:to_i)

# 時間に変換
currentTime = Time.gm(2000,1,1,A)
# 分
MINUTES = 60
# 秒
SECNODS = 60
# 待機時間を1時間表記
waitingTime = B * MINUTES * MILLISECONDS
# 現在時間と待機時間を加算
startTime = currentTime + waitingTime

# 0-23表記、0埋めしない
puts startTime.strftime('%-H')
