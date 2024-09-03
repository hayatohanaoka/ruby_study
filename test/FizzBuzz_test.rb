require 'minitest/autorun'
require_relative '../lib/FizzBuzz.rb'

class FizzBuzz_test < Minitest::Test
    def test_fizzbuzz
        assert 1, FizzBuzz(1)
        assert 'Fizz', FizzBuzz(3)
        assert 'Bizz', FizzBuzz(5)
        assert 'FizzBuzz', FizzBuzz(15)
    end
end
