# Create directory for today TIL
require 'fileutils'
require 'colorize'
task = ARGV[0] ? ARGV[0] : (raise 'Need to have an ')  
ext =  ARGV[1] ? ARGV[1] : "rb"
ext = ('-n' ===  ext) ? "" : ".#{ext}"
dir_name = Time.new.strftime("%Y%m%d_%A")
puts "Create dir: %s" % dir_name
system('mkdir ' + dir_name)
# Create file in current day's dirrecotry, in YYYYDDMM.rb format
t = Time.new
file_path = t.strftime("%Y%m%d_%A") + "/" + t.strftime("%Y%m%d#{ext}")
# puts "Create file: %s" % file_path
# system("touch " + file_path)

the_date = Time.new.strftime("%Y%m%d")
the_full_date = Time.new.strftime("%Y%m%d_%A")
the_task = task

tests_file_path_source = 'task_templates/tests.rb'
tests_file_path_destanation = t.strftime("%Y%m%d_%A") + "/" + the_date + the_task + ".rb" 
[
    ['task_templates/tests.rb', t.strftime("%Y%m%d_%A") + "/" + the_date + the_task + ".rb" ]
].each{|source, destination|
    puts "#{source} => #{destination}".green
    FileUtils.cp(source, destination)
    puts "chmod u+x #{tests_file_path_destanation}".yellow
    system("chmod u+x #{tests_file_path_destanation}")
}


