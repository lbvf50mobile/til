class Task
    # Set classes to parse each kind of expressions in brackets
    def parsers_set
        [ExpressionParsers::CapitalizeParser, ExpressionParsers::UpcaseParser] 
    end
    def parse_element str
        parser = parsers_set.find{|x| x.rule(str)}
        raise "$str - incorrect syntax, have no parser for this element" unless parser
        hash = parser.parse(str)
        parser.executor(hash)
    end
    def merge_tags(text)
        text.gsub(/\%\{([^\}]*)\}/){ parse_element($1) }
    end
    def simple_parser(input)
        merge_tags(input)
    end
end
