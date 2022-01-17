require "csv"

puts "1(新規でメモを作成)　2(既存のメモ編集する)"

memo_type = gets.chomp

if memo_type == "1"
  puts "拡張子を除いたファイルを入力してください"
  
  file_name = gets.chomp
  
  CSV.open("#{file_name}.csv", "w") do |csv|
    
  p "メモしたい内容を記入してください"
  p "完了したらctrl + Dをおします"
  
  content = readlines
  csv << content
end

elsif memo_type == "2"
  puts "拡張子を除いたファイルを入力してください"
  
  file_name = gets.chomp
  
  CSV.open("#{file_name}.csv", "a") do |csv|
  
  p "編集したい内容を記入してください"
  p "完了したらctrl + Dをおします"
  
  content = readlines
  csv << content
  end
end