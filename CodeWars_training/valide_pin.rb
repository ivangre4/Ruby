def validate_pin(pin)
    #return true or false
    if pin.size == 4 || pin.size == 6
        print pin.include?
    
    else
        print false
    end

end

validate_pin("f234")