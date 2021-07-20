######################################################
#Определяем переменные
######################################################

@humans = 10000
@machines = 10000

#####################################################
#Вспомогательные методы
#####################################################

# Метод возвращает случайное значение true false

def luck?
    rand(0..1) == 1
end

def boom
    diff = rand(1..5)
    if luck?
        @machines -= diff
        puts "#{diff} машин уничтожено"
    else
        @humans -= diff
        puts "#{diff} людей погибло"
    end
end

# Случайный выбор города

def random_city
    dice = rand(1..5)
    if dice == 1
        "Москва"
    elsif dice == 2
        "Лос-Анджелес"
    elsif dice == 3
        "Пекин"
    elsif dice == 4
        "Лондон"
    elsif dice == 5
        "Сеул"
    end
end

def random_sleep
    sleep rand(0.3..1.5)
end

def stats
    puts "Осталось #{@humans} людей и #{@machines} машин"
end

####################################################
#События
####################################################

def event1
    puts "Запущена ракета по городу #{random_city}"
    random_sleep
    boom
end

def event2
    puts "Применено радиоактивное оружние по городу #{random_city}"
    random_sleep
    boom
end

def event3
    puts "Группа солдат прорывает оборону противника в городе #{random_city}"
    random_sleep
    boom
end

####################################################
#Проверка победы
####################################################

def check_victory?
    false
end

###################################################
#Главный цикл
###################################################

loop do
    if check_victory?
        exit
end

dice = rand(1..3)

if dice == 1
    event1
    elsif dice == 2
        event2
        elsif dice == 3
            event3
        end

        stats
        random_sleep
    end
