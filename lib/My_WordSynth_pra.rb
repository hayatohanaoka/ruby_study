module Effects
    def reverse
        text = self.text
        text.chars.reverse.join
    end

    def loud(num)
        text = self.text
        text + "!" * num
    end

    def echo(num)
        text = self.text
        text.each_char.map { |moji| moji * num }.join
    end
end

class WordSynth
    include Effects
    attr_reader :text

    def initialize(plane_text)
        @text = plane_text
        @effects = []
    end

    def add_effect(effect)
        @effects << effect
    end
end

p WordSynth.new(
    WordSynth.new(
        WordSynth.new(
            'こんにちは'
        ).loud(3)
    ).echo(2)
).reverse