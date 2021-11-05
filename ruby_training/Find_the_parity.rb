=begin
You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.

Examples
[2, 4, 0, 100, 4, 11, 2602, 36]
Should return: 11 (the only odd number)

[160, 3, 1719, 19, 11, 13, -21]
Should return: 160 (the only even number)
=end


def find_outlier(integers)
    arr1 = []
    arr2 = []
    integers.each do |x|
            if x % 2 == 0
                arr2 << x
            elsif x % 2 != 0
                arr1 << x
            end
        end
            if arr1.size < arr2.size
                print arr1[0]
            else
                print arr2[0]
            end
end

a = [2, 4, 0, 100, 4, 11, 2602, 36]
b = [160, 3, 1719, 19, 11, 13, -21]
find_outlier(b)
