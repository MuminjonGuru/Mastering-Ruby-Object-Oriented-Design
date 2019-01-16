def cat_builder(name_str, color_str, age_num)
  return { "name"=>name_str, "color"=>color_str, "age"=>age_num }
end

print cat_builder("Whiskers", "orange", 3) #=> {"name"=>"Whiskers", "color"=>"orange", "age"=>3}
puts

print cat_builder("Salem", "black", 100) #=> {"name"=>"Salem", "color"=>"black", "age"=>100}
puts
