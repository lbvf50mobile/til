# @vkazancev
shop1 = {name: "Hohi", address: "Flat street 1"}
shop2 = {name: "Huhi", address: "Flat street 14"}

p shop1
p shop2

class Hash
    def inspect
        "Magazin '#{self[:name]}'"
    end
end

p shop1
p shop2