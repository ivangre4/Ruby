=begin
obj = {
    soccer_ball: 410,
    tennis_ball: 58,
    golf_ball: 45
}

print obj
obj_moon = {}
obj.each do |key, value|
    obj_moon[key] = value / 6
end
puts
print obj_moon
puts
total_weight_earth = 0
total_weight_moon = 0
obj_moon.each do |k, v|
    puts "How much #{k} do you want buy?"
    qty = gets.to_i
    total_weight_moon = total_weight_moon + (v * qty)
end
print total_weight_moon
puts
print total_weight_earth = total_weight_moon * 6
=end




#################################################################
=begin
cart = [
    {type: :soccer_ball, qty: 3},
    {type: :tennis_ball, qty: 3}
]

inventory = {
    soccer_ball: {available: 20, price_per_item: 100},
    tennis_ball: {available: 10, price_per_item: 30},
    golf_ball: {available: 5, price_per_item: 5}
}

total_sum = 0
sum1 = 0
sum2 = 0
cart.each do |element|
    
    case element[:type]
        when :soccer_ball
        if element[:qty] > inventory[:soccer_ball][:available]
            sum1 = inventory[:soccer_ball][:available] * inventory[:soccer_ball][:price_per_item]
            puts "На складе доступно только #{inventory[:soccer_ball][:available]} единиц товара #{:soccer_ball}"
            else
            sum1 = element[:qty] * inventory[:soccer_ball][:price_per_item]
        end
    
        when :tennis_ball
        if element[:qty] > inventory[:tennis_ball][:available]
            sum2 = inventory[:tennis_ball][:available] * inventory[:tennis_ball][:price_per_item]
            puts "На складе доступно только #{inventory[:soccer_ball][:available]} единиц товара #{:tennis_ball}"
            else
            sum2 = element[:qty] * inventory[:tennis_ball][:price_per_item]
        end
    end
end

puts sum1
puts sum2
puts total_sum = sum1 + sum2
=end


############################################################################################################

#Online-bank
=begin
transaction = {

    list: [
                    {
                        description: "Сапоги",
                        type: "expense",
                        sum: 40
                    },
                    {
                        description: "Зарплата (компания БЛИЖП)",
                        type: "deposit",
                        sum: 1000
                    },
                    {
                        description: "Продажа ваучера",
                        type: "deposit",
                        sum: 300
                    },
                    {
                        description: "Велосипед",
                        type: "expense",
                        sum: 200
                    },
                    {
                        description: "Протез для ноги бабушке",
                        type: "expense",
                        sum: 300
                    }
    

    ],






    deposit_filter:  :show_deposit #:hide_deposit
}

result = []
transaction[:list].each do |element|
    
    case transaction[:deposit_filter]
        when :show_deposit
            result.push(element)
        when :hide_deposit
            if element[:type] == "expense"
                result.push(element)
            end
    end
end
        

print result

=end



#####################################################
str = "the quick brown fox jumps over the lazy dog"
arr = str.split(' ')
hh = Hash.new(0)
arr.each do |element|
    element.split('').each do |x|
        hh[x] += 1
    end


end

puts hh.inspect