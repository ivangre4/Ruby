=begin
    
Consider an array/list of sheep where some sheep may be missing from their place. We need a function that counts the number of sheep present in the array (true means present).

For example,

[true,  true,  true,  false,
  true,  true,  true,  true ,
  true,  false, true,  false,
  true,  false, false, true ,
  true,  true,  true,  true ,
  false, false, true,  true]
The correct answer would be 17.

Hint: Don't forget to check for bad values like null/undefined

=end

def countSheeps array
    # May the force be with you
    result = 0
    array.each do |x|
        if x == true
        result += 1

        #elsif x == null || x == undifined
        #result = result
        end
    end
    return result


end

array1 = [true,  true,  true,  false,
    true,  true,  true,  true ,
    true,  false, true,  false,
    true,  false, false, true ,
    true,  true,  true,  true ,
    false, false, true,  true ]

countSheeps(array1)

=begin
    Лучшее решение

    def countSheeps array
    array.count(true)
    end
    
=end

