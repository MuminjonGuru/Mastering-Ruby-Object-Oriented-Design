def count_multibyte_char(str)
    count = 0
    
    str.each_char do |char|
        count += 1 if char.bytesize > 1 
    end
    
    count
end
