=begin
contacts = {
    list: [
        {
            last_name: "Smith",
            email: "fdfdf@dfdf.com",
            cell_phone: "+785566566",
            work_phone: "+755468896"
        },
        {
            last_name: "Black",
            email: "dfdfd@dfdf.com",
            cell_phone: "+466656",
            work_phone: "+4654868"
        },
        {
        last_name: "John",
        email: "llklklk@dfdf.com",
        cell_phone: "+464545",
        work_phone: "+78978745"
        },

    ]
}

print "Last Name: "
input = gets.chomp.capitalize
puts

contacts[:list].each do |element|
    if element[:last_name] == input
        puts element
    end
end
=end

contacts = {
                    "Smith" => [
                        
                        email: "fdfdf@dfdf.com",
                        cell_phone: "+785566566",
                        work_phone: "+755468896"
                    ],
                    "Black" => [
                    
                        email: "dfdfd@dfdf.com",
                        cell_phone: "+466656",
                        work_phone: "+4654868"
                    ],
                    "John" => [
                     
                    email: "llklklk@dfdf.com",
                    cell_phone: "+464545",
                    work_phone: "+78978745"
                    ]
            }

            print "Last Name: "
            input = gets.chomp.capitalize
            puts
            puts contacts[input]
            
