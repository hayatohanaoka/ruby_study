require 'minitest/autorun'
require_relative '../lib/convert_length.rb'

class ConvertLengthTest < Minitest::Test
    def test_convert_length
        assert 39.37, convert_length(1, from: :m, to: :in)
        assert 0.38, convert_length(5, from: :in, to: :m)
        assert 10670.73, convert_length(35000, from: :ft, to: :m)
    end
end
