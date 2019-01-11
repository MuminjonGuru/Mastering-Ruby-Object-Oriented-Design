def format_name(str)
  names = str.split(" ")
  formatted_name = []
  names.each do |part|
    formatted_name << part[0].upcase + part[1..-1].downcase
  end  
  return formatted_name.join(" ")
end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"
