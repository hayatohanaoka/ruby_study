class WordSynth
    def initialize
        @effects = []
    end

    def add_effect(effect)
        @effects << effect
    end

    def play(original_words)
        words = original_words
        @effects.each { |effect| words = effect.call(words) }
        #以下のコードを改装
        #@effects.each do |effect|
        #    #効果適応
        #    words = effect.call(words)
        #end
        words
    end
end

class Effects
    def self.reverse
        Proc.new { |text| text.chars.reverse.join }
    end
    
    def self.echo(num)
        Proc.new {|text| text.each_char.map{|moji| moji * 2}.join }
        #以下のコードを改装
        #Proc.new do |text|
        #    text.each_char.map do |moji|
        #        moji * 2
        #    end.join
        #end
    end

    def self.loud(num)
        Proc.new { |text| text + "!" * num }
    end
end