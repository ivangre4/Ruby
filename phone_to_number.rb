
def phone_to_number(phone)
    arr1 = [
        ["0"], ["1"], ["2","A","B","C"], ["3","D","E","F"], ["4","G", "H", "I"], ["5","J","K","L"], ["6","M","N","O"],
        ["7","P","Q","R","S"], ["8","T","U","V"], ["9","W","X","Y","Z"]
        ] 
    
    puts
        
#Сначала перебираем каждый символ номера телефона, затем каждый массив массива. И во вложенных массивах ищем символ телефона, если символ есть -> печатаем индекс
        phone.each_char do |char|
            arr1.each do |array|

                if array.include?(char)
                number = arr1.index(array)
                print number
                end
            
            end
        
        end
        
    
end

print "ВВЕДИТЕ НОМЕР:"
phone_to_number(gets.chomp)