dict = {
    "cat" => ["кот","кошка"],
    "dog" => "собака",
    "girl" => "девочка",

}

print "Введите слово: "
input = gets.chomp

puts "Перевод слова: #{dict[input]}"
