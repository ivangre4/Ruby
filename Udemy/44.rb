#require 'bcrypt'

#my_password = BCrypt::Password.create("my password")
#my_password_1 = BCrypt::Password.create("my password")
#my_password_2 = BCrypt::Password.create("my password")

#puts my_password
#puts my_password_1
#puts my_password_2

#puts my_password == "my password"


#my_password = BCrypt::Password.new("$2a$12$hQBrApWYTaxW3vNPFA31DuonxkJI5i7NfZGFhlVt91MUvM0ZFNZb2")
#puts my_password == "my password"     #=> true
#my_password == "not my password" #=> false


require_relative 'crud'

users = [
    { username: 'mashrur', password: 'password1' },
    { username: 'jack', password: 'password2' },
    { username: 'arya', password: 'password3' },
    { username: 'jonshow', password: 'password4' },
    { username: 'heisenberg', password: 'password5' }
  ]

hashed_users = Crud.create_secure_users(users)
puts hashed_users