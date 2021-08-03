=begin
Implement the function unique_in_order which takes as argument a sequence and returns a list of items without any elements with the same value next to each other and preserving the original order of elements.

For example:

unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
unique_in_order([1,2,2,3,3])       == [1,2,3]
=end

def unique_in_order(iterable)
    #your code here
        y = ""
        result = []
    if iterable.kind_of?(Array)



        iterable.each do |x|

            if x != y
                result << x
            end

            y = x

        end
        else
        array = iterable.chars
        
        array.each do |x|

            if x != y
                result << x
            end

            y = x

        end
    end
print result
end

unique_in_order('AAAABBBCCDAABBB')