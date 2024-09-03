require_relative '../lib/ideal_Effect.rb'

class WordSynth
    include Effects

    def initialize
        @effects = []
    end

    def add_effect(effect)
        @effects << effect
    end

    def play(original_words)
        words = original_words
        @effects.each do |effect|
            #効果適応
            words = effect.call(words)
        end
        words
    end
end

ws = WordSynth.new
ws.add_effect(Effects.loud(3))
ws.add_effect(Effects.echo(2))
ws.add_effect(Effects.reverse)
p ws.play('こんにちは')

