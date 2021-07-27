@arr1 = Array.new(10,100)
@arr2 = Array.new(10,100)


def attack(arr)
    sleep 1
i = rand(0..9)
power = rand(30..100)

if arr[i] > 0
    if arr[i] < power
       puts "Робот по индексу #{i} получил #{arr[i]} урона. Робот по индексу #{i} убит"
       arr[i] = arr[i] - arr[i]
        
    elsif arr[i] == power
        puts "Робот по индексу #{i} получил #{power} урона. Робот по индексу #{i} убит"
        arr[i] = arr[i] - power
    else
    arr[i] = arr[i] - power
    puts "Робот по индексу #{i} получил #{power} урона. Робот по индексу #{i} имеет #{arr[i]} здоровья"
    end
else
    puts "Промазали по индексу #{i}"
end
sleep 1
end

def victory?
    robots_left1 = @arr1.count { |x| x > 0 }
    robots_left2 = @arr2.count { |x| x > 0 }
    if robots_left1 == 0
        puts "Команда 2 победила, в команде осталось #{robots_left2} роботов"
        return true
    end
    if robots_left2 == 0
        puts "Команда 1 победила, в команде осталось #{robots_left1} роботов"
        return true
    end

    false
end

def stats
    cnt1 = @arr1.count { |x| x > 0 }
    cnt2 = @arr2.count { |x| x > 0 }
    print @arr1
    puts "1-ая команда: #{cnt1} роботов в строю"
    print @arr2
    puts "2-ая команда: #{cnt2} роботов в строю"
end

loop do
    puts "Первая команда наносит удар..."
    attack(@arr2)
    exit if victory?
    stats
    sleep 3
    puts

    puts "Вторая команда наносит удар..."
    attack(@arr1)
    exit if victory?
    stats
    sleep 3
    puts
end