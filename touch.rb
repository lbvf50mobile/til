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
    File.open(file_path, 'w'){|f| f.write("echo \"alias x='bash #{file_path}'\" ") }
    File.open('til_alias.sh', 'w'){|f| f.write("alias x='bash #{file_path}'") } # Create alias for TIL
    
end
if '.rb' == ext
    File.open(file_path, 'w'){|f| f.write("p \"alias x='ruby #{file_path}'\" ") }
    File.open('til_alias.sh', 'w'){|f| f.write("alias x='ruby #{file_path}'") } # Create alias for TIL
end
if '.js' == ext
    File.open(file_path, 'w'){|f| f.write("console.log(\"alias x='node #{file_path}'\");") }
    File.open('til_alias.sh', 'w'){|f| f.write("alias x='node #{file_path}'") } # Create alias for TIL
end
if '.lua' == ext
    File.open(file_path, 'w'){|f| f.write("print(\"alias x='lua #{file_path}'\")") }
    File.open('til_alias.sh', 'w'){|f| f.write("alias x='lua #{file_path}'") } # Create alias for TIL
end
if '.php' == ext
    File.open(file_path, 'w'){|f| f.write("<?php\n echo(\"alias x='php #{file_path}'\");") }
    File.open('til_alias.sh', 'w'){|f| f.write("alias x='php #{file_path}'") } # Create alias for TIL
end

if '.go' == ext
    file_content = <<-FILECONTENT
    package main

    import (
        "fmt"
    )
    
    func main() {
        fmt.Println("alias x='go run #{file_path}'")
    }
FILECONTENT
    File.open(file_path, 'w'){|f| f.write(file_content) }
    File.open('til_alias.sh', 'w'){|f| f.write("alias x='go run #{file_path}'") } # Create alias for TIL
end

# Create Alias

system("chmod u+x #{file_path}")
