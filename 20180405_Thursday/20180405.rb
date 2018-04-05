# scan and gsub to count matches, and Enumerator#size is not Enumerator#count. 
full = "12212212122"
patern = "2"
p full.scan(patern).size
p full.gsub(patern).size
p full.gsub(patern).count
p full.gsub(patern).class
