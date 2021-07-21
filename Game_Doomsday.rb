######################################################
#Определяем переменные
######################################################

@humans = 1000
@machines = 1000

#####################################################
#Вспомогательные методы
#####################################################

# Метод возвращает случайное значение true false

def luck?
    rand(0..1) == 1
end

def boom
    diff = rand(1..50)
    if luck?
        if diff > @machines
            @machines -= @machines

            else
        @machines -= diff
        puts "#{diff} машин уничтожено"
        revive = rand(0..diff)
        @machines += revive
        puts "#{revive} машин создано"
        end
    else
        if diff > @humans
            @humans -= @humans
    
            else
        @humans -= diff
        puts "#{diff} людей погибло"
        revive = rand(0..diff)
        @machines += revive
        puts "#{revive} людей появилось"
        end
    end
end

# Случайный выбор города

def random_city
    dice = rand(1..5)

    case dice
        when 1
            "Москва"
        when 2
            "Лос-Анджелес"
        when 3
            "Пекин"
        when 4
            "Лондон"
        when
            "Сеул"
    end




=begin
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
=end
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

def event4
    puts "Танковое сражение в городе #{random_city}"
    random_sleep
    boom
end

def event5
    puts "Применено гиперзвуковое оружие в городе #{random_city}"
    random_sleep
    boom
end

def event6
    puts "Ядерный удар в городе #{random_city}"
    random_sleep
    boom        
end

####################################################
#Проверка победы
####################################################

def check_victory?
    if @machines < 1
        puts "Люди победили"
        exit
    elsif @humans < 1
        puts "Машины победили"
        exit
    end
end

###################################################
#Главный цикл
###################################################

loop do
    if check_victory?
        exit
    end

    dice = rand(1..6)
    case dice
        when 1
            event1
            when 2
                event2
                when 3
                    event3
                    when 4
                        event4
                        when 5
                            event5
                            when 6
                                event6
    end

    stats
    random_sleep
end
