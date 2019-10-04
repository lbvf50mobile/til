# simple_parser

### NOTE! Creding => Credits TODO: plural value

Idea of interpolations:

- Generate method extractor extract values from %{} the code
- Get the map for the methods, or somethng like it.

Вам начислено **%{CREDIT:ACHIEVED}** баллов. Вам не хватает **%{CREDIT:LEVELUP}** баллов до получения **%{BADGE:LEVELUP}**.\n\n
**%{Samplebox:APP:[$caption=Нажмите здесь для получения скидки]}**

So here I have two kinds of inputs:

- UpperCase ones: **CREDIT:ACHIEVED** - This related to object memeber and message name to him
- Capitilizes ones: **Samplebox:APP:[$caption=Нажмите здесь для получения скидки]** - This one has a Modulus chain, and hash we going pass to the object.

The solution

 - a) Extract all %{} paranthesized values
 - b) Get a type of instructions **UpperCase** ore **Capitalizes ones**
 - c) Fore **UpperCase** define **var_name** and **method** 
 - d) For **Capitilizes** definde **module_chain** and **params hash** 

 Each Class going to have **rule**, **parser**, **executor**

- **rule** is the rule that defines a type of expressions in parantheses
- **parser** is the way how do I parse the entity inside the brackets
- **executor** is the  way how to execute data from the **parser**




```
class Credits
  def achieved
    1234
  end

  def levelup
     15
  end
end

class Badge
  def self.levelup
    "Silver Badge"
  end
end

class Samplebox::App
  attr_accessor :caption
  def initialize(params)
    @caption = params[:caption]
  end

  def to_s
    "[#{caption}](https://samplebox.test/)"
  end
end

class User
  attr_accessor :credits, :facebook, :badge
  def initialize
    @credits  = Credits.new
    @facebook = Facebook.new
    @badge    = Badge.new
  end

  def merge_tags(text)
  end
end

# text_parser_spec.rb
...
describe "merge_tags" do
  it "should interpolate" do
    text = "Вам начислено %{CREDIT:ACHIEVED} баллов. Вам не хватает %{CREDIT:LEVELUP} баллов до получения %{BADGE:LEVELUP}.\n\n%{Samplebox:APP:[$caption=Нажмите здесь для получения скидки]}"
    expected_result = "Вам начислено 1234 баллов. Вам не хватает 15 баллов до получения Silver Badge.\n\n[Нажмите здесь для получения скидки](https://samplebox.test)"
    User.new.merge_tags(text).should == expected_result
  end
end
```