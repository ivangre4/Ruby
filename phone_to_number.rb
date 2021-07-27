
def phone_to_number(phone)
arr1 = [
    [], [], ["A","B","C"], ["D","E","F"], ["G", "H", "I"], ["J","K","L"], ["M","N","O"],
    ["P","Q","R","S"], ["T","U","V"], ["W","X","Y","Z"]
    ] 
phone = phone.delete "0-9"
puts phone


end

phone_to_number(gets.chomp)