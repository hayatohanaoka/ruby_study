require 'minitest/autorun'
require_relative '../lib/convert_hash_syntax.rb'

class ConvertHashSyntaxTest < Minitest::Test
    def test_ConvertHashSyntax
        old_syntax = <<~TEXT
            {
                :name => 'Alice',
                :age=>20,
                :gender  =>  :female
            }
        TEXT
        new_syntax = <<~TEXT
            {
                name: 'Alice',
                age: 20,
                gender: :female
            }
        TEXT
        assert_equal new_syntax, convert_hash_syntax(old_syntax)
    end
end