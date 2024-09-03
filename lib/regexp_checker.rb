print('text:? ')
text = gets.chomp

#正規表現の形をチェックする（オブジェクトが作成できるか否か）
begin
    print 'pattern?: '
    pattern = gets.chomp
    #regexp = /#{pattern}/と同じ意味だが
    #正規表現オブジェクトを作成している。（ここ大事）
    regexp = Regexp.new(pattern)
rescue RegexpError => e
    p "Invalid Pattern: #{e.message}"
    p "正しい正規表現の形を入力してください。"
    retry
end

matches = text.scan(regexp)
#正規表現ちマッチするものがある場合
if matches.size > 0
    p "Matcehed #{matches.join(",")}"
#正規表現にマッチするものがない場合
else
    p "Nothing matched."
end