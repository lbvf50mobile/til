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
    File.open(file_path, 'w'){|f| f.write("echo \"alias x='#{file_path}'\" ") }
    File.open('til_alias.sh', 'w'){|f| f.write("alias x='#{file_path}'") } # Create alias for TIL
    system("chmod u+x #{file_path}")
end
