# simple_parser

## Time

- [Understanding task](my_drafts.md), create first architecture: 25 minutes
- Create project from boilerplate code, create fies, create **UpcaseParser**: 1hr
- Create **CapitilizeParser**: 40minutes
- Crate string intepolation based on this code: 10 minutes
- Creating this file: 25 minutes

Total: aprox **2.5 hrs**


## Ahricheture

The string intepolation implemented as a simple call of `gsub`, that substitudes expresions between curve brackets, by a appropriate value.
```
def merge_tags(text)
    text.gsub(/\%\{([^\}]*)\}/){ parse_element($1) }
end
```

For each kind of expression a class in the system created.

```
def parsers_set
    [ExpressionParsers::CapitalizeParser, ExpressionParsers::UpcaseParser] 
end
```

I count two types of expressions in the provided example:

- **Upcase** %{CREDIT:ACHIEVED}, that call an method from class varable
- **Capitilized**  %{Samplebox:APP:[$caption=Нажмите здесь для получения скидки]}, that crate new class instance.

A class for parsing have thee methods:

- **rule** it checks do this class appropriate for parsing
- **parse** it transfrom a string of expression into the hash with prepared values
- **executor** this method take a hash and executes the transformation based on this hash

this is how the process lookes like

```
def parse_element str
        parser = parsers_set.find{|x| x.rule(str)}
        raise "$str - incorrect syntax, have no parser for this element" unless parser
        hash = parser.parse(str)
        parser.executor(hash)
end
```

In case if there no appropriate rule for parsing incoming expression an error raised.

## Files:

- [General tests](20191004simple_parser.rb)
- [Simple parser class](simple_parser.rb)
- [Upcase Parser class](expression_parsers/upcase_parser.rb) / [test](expression_parsers_tests/upcase_parser_test.rb)
- [Capitilize Parser class](expression_parsers/capitalize_parser.rb) / [tests](expression_parsers_tests/upcase_parser_test.rb)




