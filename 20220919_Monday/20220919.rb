# Leetcode: 609. Find Duplicate File in System.
# https://leetcode.com/problems/find-duplicate-file-in-system/
# @param {String[]} paths
# @return {String[][]}
# Fail:
# ["root/a 1.txt(abcd) 2.txt(efsfgh)","root/c 3.txt(abdfcd)","root/c/d 4.txt(efggdfh)"]
def find_duplicate(paths)
  @hash ={} # Let's fill hash where key is value.
  paths.each do |long|
    dir,files = extract_dir_and_files(long)
    files.each do |file|
      name, content = extract_content(file)
      @hash[content] ||= []
      @hash[content].push(dir + "/" + name)
    end
  end
  @hash.values
end

def extract_dir_and_files(str)
  arr = str.split(" ")
  [arr[0],arr[1..-1]]
end

def extract_content(str)
  arr=str.split(?()
  [arr[0],arr[1][0...-1]]
end


