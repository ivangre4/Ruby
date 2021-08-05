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

cart = [
    {type: :soccer_ball, qty: 2},
    {type: :tennis_ball, qty: 3}
]

inventory = {
    soccer_ball: {available: 2, price_per_item: 100},
    tennis_ball: {available: 1, price_per_item: 30},
    golf_ball: {available: 5, price_per_item: 5}
}

total_qty = 0
cart.each do |element|
    
    case element[;type]
    when :soccer_ball
        sum1 = element[:qty] * 
    
    
    
    
    
    
    
end

puts 