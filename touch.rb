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
if '.sh' == ext
    # Why? quotes
    #system("echo \"echo #{file_path} 2\" > #{file_path}")
    File.open(file_path, 'w'){|f| f.write("echo #{file_path}") }
    system("chmod u+x #{file_path}")
end
