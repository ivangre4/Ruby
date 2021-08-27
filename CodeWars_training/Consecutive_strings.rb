=begin
You are given an array(list) strarr of strings and an integer k. Your task is to return the first longest string consisting of k consecutive strings taken in the array.

Examples:
strarr = ["tree", "foling", "trashy", "blue", "abcdef", "uvwxyz"], k = 2

Concatenate the consecutive strings of strarr by 2, we get:

treefoling   (length 10)  concatenation of strarr[0] and strarr[1]
folingtrashy ("      12)  concatenation of strarr[1] and strarr[2]
trashyblue   ("      10)  concatenation of strarr[2] and strarr[3]
blueabcdef   ("      10)  concatenation of strarr[3] and strarr[4]
abcdefuvwxyz ("      12)  concatenation of strarr[4] and strarr[5]

Two strings are the longest: "folingtrashy" and "abcdefuvwxyz".
The first that came is "folingtrashy" so 
longest_consec(strarr, 2) should return "folingtrashy".

In the same way:longest_consec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2) --> "abigailtheta"
=end

def longest_consec(strarr, k)
    index = 0
    arr = []
    if strarr.empty? || k <= 0 || k > strarr.size
        return ""
    else
        strarr.each do |element|
            if index < strarr.size
            index = strarr.index(element)
            next_element = strarr.at(index + 1)
            arr << element + next_element
            elsif index == strarr.size
                arr << strarr[-2] + strarr[-1]
            end
            puts index, element, next_element
        end
    end
    print index, arr




end

longest_consec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2)