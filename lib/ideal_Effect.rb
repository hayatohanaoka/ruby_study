module Effects
    def self.reverse
        ->(words) do 
            words.split(' ').map(&:reverse).join(' ')
        end
    end

    def self.echo(num)
        #スペースならそのまま返す
        #スペース以外なら、その文字を指定の回数だけ繰り返す
        ->(words) do
            words.each_char.map{ |moji| moji == ' ' ? moji : moji * num }.join
        end
    end

    def self.loud(count)
        ->(words) do
            words.split(' ').map{ |word| word + '!' * count }.join(' ')
        end
    end
end
