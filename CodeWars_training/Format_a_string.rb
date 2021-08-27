=begin
Given: an array containing hashes of names

Return: a string formatted as a list of names separated by commas except for the last two names, which should be separated by an ampersand.

Example:

list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# returns 'Bart, Lisa & Maggie'

list([ {name: 'Bart'}, {name: 'Lisa'} ])
# returns 'Bart & Lisa'

list([ {name: 'Bart'} ])
# returns 'Bart'

list([])
# returns ''
=end

def list names
    arr = []
    arr1 = []
    str = ""
    if names.empty?
        return ""
    else
        if names.count == 1
            return names[0][:name]
        elsif names.count == 2
            return "#{names[0][:name]} & #{names[1][:name]}"
        else
            names.each do |element|
                arr << element[:name]
            end
            arr1 = [arr[-2], arr[-1]]
            str = arr1.join(" & ")
            arr.pop
            arr.pop
            arr << str
            return arr.join(', ')
        end
        
    end
end

list([ {name: 'Bart'}, {name: 'Lisa'} ])


#Лучшее решение
=begin
def list names
    names = names.map { |name| name[:name] }
    last_name = names.pop
    return last_name.to_s if names.empty?
    "#{names.join(', ')} & #{last_name}"
  end
  =end