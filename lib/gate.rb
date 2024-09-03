MONEY = [0, 160, 190]
STATIONS = [:umeda, :juso, :mikuni]

class Gate
    def initialize(station)
        @station = station
    end

    def entry(ticket)
        ticket.stamp(@station)
    end

    def exit(ticket)
        from = STATIONS.index(ticket.stamped_at)
        to = STATIONS.index(@station)
        distance = to - from
        ticket.price >= MONEY[distance]
    end
end

class Ticket
    attr_reader :price, :stamped_at

    def initialize(price)
        @price = price
    end

    def stamp(station)
        @stamped_at = station
    end
end