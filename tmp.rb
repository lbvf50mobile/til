# Help for @lazylead 

licence_file_path = "test_licence.txt"
file_name_teplate = /.+\.txt$/
dir_path = 'one'
puts "Licence file: #{licence_file_path}\nFile name template: #{file_name_teplate.inspect}\nDirpath: #{dir_path}\nLicence text:\n"
p licence_text = File.read(licence_file_path)

stack = [dir_path]

while !stack.empty?
    dir = stack.pop
    Dir.entries(dir).each{|name|
        next if /^\.+$/ === name
        new_name = "#{dir}/#{name}"
        if File.directory?(new_name)
            stack.unshift(new_name)
        elsif file_name_teplate === new_name
            data = File.read(new_name)
            File.open(new_name, 'w') { |file| file.write(licence_text+data) }
            puts "ADD: #{new_name}"
        else
            puts "SKIP: #{new_name}"
        end
    }
end
