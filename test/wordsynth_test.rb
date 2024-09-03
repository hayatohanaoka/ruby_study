require 'minitest/autorun'
require_relative '../lib/My_WordSynth.rb'

class EffectsTest < Minitest::Test
    def test_effects
        assert Effects.reverse
        assert Effects.echo(2)
        assert Effects.loud(3)
    end
end

class WordSynthTest < Minitest::Test
    def setup
        @ws = WordSynth.new
        @e1 = Effects.reverse
        @e2 = Effects.echo(2)
        @e3 = Effects.loud(3)
    end

    def test_reverse
        @ws.add_effect(@e1)
        assert_equal 'olleh', @ws.play('hello')
    end

    def test_echo
        @ws.add_effect(@e2)
        assert_equal 'hheelllloo', @ws.play('hello')
    end

    def test_loud
        @ws.add_effect(@e3)
        assert_equal 'hello!!!', @ws.play('hello')
    end
        
    def test_all
        @ws.add_effect(@e2)
        @ws.add_effect(@e3)
        @ws.add_effect(@e1)
        assert_equal '!!!oolllleehh', @ws.play('hello')
    end
end

