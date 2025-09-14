# Leetcode: 966. Vowel Spellchecker
# https://leetcode.com/problems/vowel-spellchecker/description/?envType=daily-question&envId=2025-09-14
# - - -
# Accepted.
# Thanks God, Jesus Christ!

#------------------------------

# Runtime 103ms | Beats 100.00%
# Memory 218.92MB | Beats -%


# @param {String[]} wordlist
# @param {String[]} queries
# @return {String[]}
def spellchecker(wordlist, queries)
  # Idea is to create several dicitonaries. Select first enerence by zip.
  
  # 1) Just remember case sensetive.
  sensitive = {}
  wordlist.each{|x| sensitive[x] = x}
  # 2) Now make case insensetive.
  insensetive = {}
  singleCase = wordlist.map(&:downcase)
  # Save first match
  singleCase.zip(wordlist).each{|a,b| insensetive[a] = b if ! insensetive[a]}
  # 3) No make vowel errors.
  fixerrors = {}
  unoVowel = wordlist.map(&:downcase).map{ |x| x.tr("aeiou",'a')}
  unoVowel.zip(wordlist).each{|a,b| fixerrors[a] = b if  ! fixerrors[a]}
  # And prepare the answer.
  return queries.map{|x| 
    ins = x.downcase
    smpl = x.downcase.tr('aeiou','a')
    if sensitive[x] 
         sensitive[x]
     elsif insensetive[ins] 
       insensetive[ins]
     elsif fixerrors[smpl]
       fixerrors[smpl]
     else
       ""
     end
  }
end
