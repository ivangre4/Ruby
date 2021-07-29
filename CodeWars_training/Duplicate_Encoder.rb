=begin
The goal of this exercise is to convert a string to a new string where each character 
in the new string is "(" if that character appears only once in the original string, or ")" if that character appears more than once in the original string. 
Ignore capitalization when determining if a character is a duplicate.

Examples
"din"      =>  "((("
"recede"   =>  "()()()"
"Success"  =>  ")())())"
"(( @"     =>  "))((" 
Notes

Assertion messages may be unclear about what they display in some languages. If you read "...It Should encode XXX", the "XXX" is the expected result, 
not the input!
=end


def duplicate_encode(word)
    #your code here
    word = word.downcase
    result = ""

        word.each_char do |char|
            x = word.count(char)
            if x > 1
                char = ")"
            else
                char = "("
            end
                result += char
            
        end

        print result

end

duplicate_encode("din")

########Лучшее решение!!!!
=begin
def duplicate_encode(word)
    word
        .downcase
        .chars
        .map { |char| word.downcase.count(char) > 1 ? letter = ')' : letter = '(' }
        .join
  end
=end