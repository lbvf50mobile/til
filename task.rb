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


files = [
    ['task_templates/tests.rb', t.strftime("%Y%m%d_%A") + "/" + the_date + the_task + ".rb" ],
    ['task_templates/docs.md', t.strftime("%Y%m%d_%A") + "/" + the_date + the_task + ".md" ],
    ['task_templates/task.rb', t.strftime("%Y%m%d_%A") + "/" + the_task + ".rb" ],
]
files.each{|source, destination|
    puts "#{source} => #{destination}".green
    FileUtils.cp(source, destination)
    puts "chmod u+x #{destination}".yellow
    system("chmod u+x #{destination}")
}
til = "alias x='ruby #{files[0][1]}'"
File.open('til_alias.sh', 'w'){|f| f.write(til) } # Create alias for TIL
puts til.magenta

templates = [
    ['__TASK__',the_task],
    ['__DATE__',the_date],
    ['__FULL_DATE__',the_full_date]
]
files.each{|_,file_name|
    puts file_name
    text = File.read(file_name)
    templates.each{|pat,rep| text.gsub!(pat,rep)}
    File.open(file_name, "w") {|file| file.puts text}
}



