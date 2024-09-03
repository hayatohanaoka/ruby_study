test =
    begin
        p 'ok'
    rescue
        p 'error'
    ensure
        p 'ensure'
    end

p test
p "======================================="

ret =
    begin
        1 / 0
        p 'ok'
    rescue
        p 'error'
    ensure
        p 'ensure'
    end

p ret
p "=========================================="
    
foo =
    begin
        1/0
        p 'ok'
    rescue
        p 'error'
    end

p foo