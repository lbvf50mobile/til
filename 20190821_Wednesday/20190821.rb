p "alias x='ruby 20190821_Wednesday/20190821.rb'" 

# Ruby: gsub! have different return from gsub. It returns nil if no substitutions were performed.

# https://apidock.com/ruby/String/gsub
# https://apidock.com/ruby/v2_5_5/String/gsub%21 
# Performs the substitutions of String#gsub in place, returning str, or nil if no substitutions were performed.
p a = ?2.gsub(?3,?4)
p b = ?2.gsub!(?3,?4)
p a != b