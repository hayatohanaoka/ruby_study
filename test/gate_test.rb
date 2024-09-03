require 'minitest/autorun'
require_relative '../lib/gate.rb'

class GateTest < Minitest::Test
    def setup
        @umeda= Gate.new(:umeda)
        @juso= Gate.new(:juso)
        @mikuni= Gate.new(:mikuni)
        @t_160= Ticket.new(160)
        @t_190= Ticket.new(190)
    end

    def test_gate_umeda_to_juso
        @umeda.entry(@t_160)
        assert @juso.exit(@t_160)
    end

    def test_gate_umeda_to_mikuni
        @umeda.entry(@t_160)
        refute @mikuni.exit(@t_160)
    end

end