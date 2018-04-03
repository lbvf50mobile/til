# Create directory for today TIL
dir_name = Time.new.strftime("%Y%m%d_%A")
puts "Create dir: %s" % dir_name
system('mkdir ' + dir_name)