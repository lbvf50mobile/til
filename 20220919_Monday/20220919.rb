# Leetcode: 609. Find Duplicate File in System.
# https://leetcode.com/problems/find-duplicate-file-in-system/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 214 ms, faster than 100.00% of Ruby online submissions for Find Duplicate File in System.
# Memory Usage: 220.6 MB, less than 66.67% of Ruby online submissions for Find Duplicate File in System.
# @param {String[]} paths
# @return {String[][]}
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
  @hash.values.select{|x| x.size > 1 }
end

def extract_dir_and_files(str)
  arr = str.split(" ")
  [arr[0],arr[1..-1]]
end

def extract_content(str)
  arr=str.split(?()
  [arr[0],arr[1][0...-1]]
end


