##########################################
#ПРОВЕРКА ВОЗРАСТА
#########################################

print "Ваш возраст:"
age = gets.to_i
if age < 18
    puts "Сожалеем, но вам нет 18"
    exit
end

balance = 20
loop do
    puts "Нажмите Enter"
    gets

    x = rand(1..5)
    y = rand(1..5)
    z = rand(1..5)

    puts "Результат: #{x}  #{y}  #{z}"

    if x == 0 && y == 0 && z == 0
        balance = 0
        puts "Ваш баланс обнулен"
    elsif x == 1 && y == 1 && z == 1
        balance += 10
        puts "Ваш баланс увеличился на 10$"
    elsif x == 2 && y == 2 && z == 2
        balance += 20
        puts "Ваш баланс увеличился на 20$"
    else
        balance -= 0.5
        puts "Ваш баланс уменьшился на 50 центов"
    end

    puts "Ваш баланс: #{balance} долларов"

    if balance == 0
        puts "До свидания"
        exit
    end
end
