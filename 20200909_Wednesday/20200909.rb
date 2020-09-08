p "alias x='ruby 20200909_Wednesday/20200909.rb'" 

# https://www.codewars.com/kata/5c1a334516537ccd450000d8 RegEx Like a Boss #2: Alphabetical Order String.
x = "^"+ (?a..?z).each_with_object(""){|x,obj| obj << ' *'+x+"*"} + " *\\Z"

File.write(__dir__+"/regex.txt", x) 