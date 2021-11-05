sum = -> (num1, num2) {return num1 + num2}
multy = -> (num1, num2) {return num1 * num2}
pow = -> (num1, num2) {return num1 ** num2}

def product(num1, num2, func)
    # BEGIN (write your solution here)

    if num1 == num2 - 1
        return func.call(num1, num2)
    else
        puts func.call(num1,num1 + 1) + product(num1, num2, func)
    end
    # END
end

puts product(1, 3, multy)