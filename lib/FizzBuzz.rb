require 'debug'

def FizzBuzz(num)
    binding.irb
    if num % 15 == 0
        'FizzBuzz'
    elsif num % 5 == 0
        'Buzz'
    elsif num % 3 ==0
        'Fizz'
    else
        num
    end
end