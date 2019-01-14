# Hashes
# default value nil
# Hash.new(default)
# counter hash strategy

# my_hash = Hash.new(0)

# puts my_hash["a"]

#  example 2
# my_hash = Hash.new("hello")

# my_hash["a"] = "goodbye"
# puts my_hash

#  example 3
# counter = Hash.new(0)

# str = "bootcamp prep"
# str.each_char { |char| counter[char] += 1}
# puts counter

# example 4
my_hash = {"a" => 42, "b"=> 10}

key = "b"
puts my_hash[key]
