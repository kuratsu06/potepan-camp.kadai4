require "csv"

puts "1(新規でメモを作成)　2(既存のメモ編集する)"

memo_type = gets.chomp

if memo_type == "1"
  puts "拡張子を除いたファイルを入力してください"
  
  memo_type = gets.to_s
  
  CSV.open("test.csv", "w") do |test|

  p "メモしたい内容を記入してください"
  p "完了したらctrl + Dをおします"
  
  content = readlines
  test << content
end

elsif memo_type == "2"
  
  CSV.open("test.csv", "a") do |test|
  
  p "編集したい内容を記入してください"
  p "完了したらctrl + Dをおします"
  
  content = readlines
  test << content
  end
end