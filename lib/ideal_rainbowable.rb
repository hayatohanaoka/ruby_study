module Rainbowable
    def rainbow
        self.to_s.each_char.map.with_index do |moji, index|
            color = 31 + index % 6
            "\e[#{color}m#{moji}"
        end.join + "\e[0m"
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