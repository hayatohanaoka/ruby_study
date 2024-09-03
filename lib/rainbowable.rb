module Rainbowable
    def rainbow
        str = self.to_s
        lists = []
        count = 0

        str.each_char do |moji|
            color = 31 + count % 6
            lists << "\e[#{color}m#{moji}"
            count += 1
        end
        lists.join + "\e[0m"
    end
end

#class String
#    include Rainbowable
#end
#class Array
#    include Rainbowable
#end
#
#puts 'hello, world'.rainbow
#puts (0..100).map{ |n| n }.rainbow