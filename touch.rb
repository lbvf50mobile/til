# Create directory for today TIL
ext =  ARGV[0] ? ARGV[0] : "rb"
ext = ('-n' ===  ext) ? "" : ".#{ext}"
dir_name = Time.new.strftime("%Y%m%d_%A")
puts "Create dir: %s" % dir_name
system('mkdir ' + dir_name)
# Create file in current day's dirrecotry, in YYYYDDMM.rb format
t = Time.new
file_path = t.strftime("%Y%m%d_%A") + "/" + t.strftime("%Y%m%d#{ext}")
puts "Create file: %s" % file_path
system("touch " + file_path)
