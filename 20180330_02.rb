# max_by method
vowells_amount = ->(word) do
     word.upcase.chars.count{ |x| /[AEIOU]/ === x}
end

p %w{You are automatically given an allegiance with anyone who is in the same clan as you}.max_by(&vowells_amount)