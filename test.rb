sum = -> (num1, num2) {return num1 + num2}
multy = -> (num1, num2) {return num1 * num2}
pow = -> (num1, num2) {return num1 ** num2}

def product(num1, num2, func)
    result = 0
    # BEGIN (write your solution here)
    if num1 == num2
        result = func.call(num1, num2)
    else
        loop do
            result = result + func.call(num1, num1 + 1)
            num1 += 1
            puts result
            break if num1 == num2
        end
    end
    puts result
    # END
end

puts product(1, 3, multy)