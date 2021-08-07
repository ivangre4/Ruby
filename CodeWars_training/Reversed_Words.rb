=begin
Complete the solution so that it reverses all of the words within the string passed in.

Example:"The greatest victory is that which requires no battle" --> "battle no requires which that is victory greatest The"
=end

def solution(sentence)
    result = ""
    arr = sentence.split(/ /).reverse
    arr[0...-1].each do |x|
        result += x + " "
    end
    result = result + arr[-1]
    return result
    
    
  

end


solution("The greatest victory is that which requires no battle")


=begin
ЛУЧШЕЕ РЕШЕНИЕ

def solution(sentence)
  sentence.split.reverse.join(" ")
end

=end