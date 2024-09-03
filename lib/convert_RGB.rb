def to_hex(a, b, c)
    hex = "#" 
    [a, b, c].each do |n|
        hex += n.to_s(16).rjust(2, '0')
    end
    hex
end

def to_ints(code)
    x = code[1..2]
    y = code[3..4]
    z = code[5..6]
    [x, y, z].map do |n|
        n.hex
    end
end