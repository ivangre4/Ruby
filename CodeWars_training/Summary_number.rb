def sum_digits(number)
    result = 0
    number.to_s.each_char do |x|
        x = x.to_i
        if x in (0..9)
            result += x
        end
        
    end
return result
end

sum_digits(-12)