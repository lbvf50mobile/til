# array#collect is an alias of array#map
# https://apidock.com/ruby/Array/collect
# https://apidock.com/ruby/Array/map
# https://apidock.com/rails/ActiveRecord/Persistence/ClassMethods/create
# https://apidock.com/rails/v4.2.7/ActiveRecord/Persistence/ClassMethods/create%21
p a = %w{a b c}.map(&:upcase)
p b = %w{a b c}.collect(&:upcase)
p a == b