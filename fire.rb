# Run last file in current day's dirrecotry, in YYYYDDMM.rb format
t = Time.new
file_path = t.strftime("%Y%m%d_%A") + "/" + t.strftime("%Y%m%d.rb")
puts "Run file: %s" % file_path
system("ruby  " + file_path)
