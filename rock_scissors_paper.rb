total_result = [0,0,0]

loop do
    print "(R)ock, (S)cissors, (P)aper?"

    s = gets.strip.capitalize
    arr = [:rock, :scissors, :paper]

    random = rand(0..2)

    case random
        when 0
            case s
                when "R"
                puts "Ничья. Компьютер выбрал #{arr.at(0)}"
                total_result[1] =+ 1
                when "S"
                puts "Компьютер выиграл. Он выбрал #{arr.at(0)}"
                total_result[0] =+ 1
                when "P"
                puts "Ты выиграл. Компьютер выбрал #{arr.at(0)}"
                total_result[2] = total_result[2] + 1
            end
        when 1
            case s
                when "S"
                puts "Ничья. Компьютер выбрал #{arr.at(1)}"
                total_result[1] =+ 1
                when "P"
                puts "Компьютер выиграл. Он выбрал #{arr.at(1)}"
                total_result[0] =+ 1
                when "R"
                puts "Ты выиграл. Компьютер выбрал #{arr.at(1)}"
                total_result[2] =+ 1
            end
        when 2
            case s
            when "P"
            puts "Ничья. Компьютер выбрал #{arr.at(2)}"
            total_result[1] =+ 1
            when "R"
            puts "Компьютер выиграл. Он выбрал #{arr.at(2)}"
            total_result[0] =+ 1
            when "S"
            puts "Ты выиграл. Компьютер выбрал #{arr.at(2)}"
            total_result[2] =+ 1
            end
    end
    sleep 1
    puts "Cчет: Компьютер: #{total_result[0]}, Ничья: #{total_result[1]}, Человек: #{total_result[2]}"

    break if total_result[0] == 3 || total_result[2] == 3
end

if total_result[0] == 3
    puts "Компьютер победил"
elsif total_result[2] == 3
    puts "Человек победил"
end