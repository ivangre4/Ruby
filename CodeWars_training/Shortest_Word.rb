=begin
    

Simple, given a string of words, return the length of the shortest word(s).

String will never be empty and you do not need to account for different data types.
    
=end

def find_short(s)
    # your code here
    arr1 = s.split
    l = arr1[0].length
    arr1.each do |x|
        l_now = x.length
        if l_now < l
            l = l_now
        end
    end
    print l # l: length of the shortest word
end

find_short("turns out random test cases are easier than writing out basic ones")

=begin
    
def find_short(s)
    s.split.map(&:size).min
end
    
=end