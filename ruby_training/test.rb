
sum = -> (num1, num2) {return num1 + num2}
multy = -> (num1, num2) {return num1 * num2}
pow = -> (num1, num2) {return num1 ** num2}


def product(num1, num2, func)
    # BEGIN (write your solution here)
    if num1 + 1 == num2
        return func.call(num1, num2)
    else
        return product(num1+1, num2, func)
    end
    
    # END
end

puts product(1, 3, sum)




=begin
def my_pow(base, exp)
    pow_iter = -> ()

    pow_iter.call(exp, 1)
end
=end