p "alias x='ruby 20190426_Friday/20190426.rb'" 

# Ruby using Hash.new and merge for a default value.

dictionary = {key0: "zero", key1: "one", key2: "two", key3: "three"}
hash_with_default = Hash.new("no_such_key").merge(dictionary)

p hash_with_default[:key0]
p hash_with_default[:key1]
p hash_with_default[:key50]
