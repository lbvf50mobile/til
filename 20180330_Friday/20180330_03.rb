# Case incesitive regex

def count_vowels word
    word.chars.count{|c| /[AEIOU]/i === c}
end

p count_vowels "Hi"
