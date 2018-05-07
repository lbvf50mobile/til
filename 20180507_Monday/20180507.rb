# One more time about `raise` inheritance. 'Standard error, dose not cought by Module Error.'

begin
    raise "hi"
rescue => e
    puts "e class #{e.class}"
    puts "e superclass #{e.class.superclass}"
    puts "#{e.class.superclass} superclass #{e.class.superclass.superclass}"
    puts "#{e.class.superclass.superclass} superclass #{e.class.superclass.superclass.superclass}"
end

def check_do_we_catch
    begin
       yield 
    rescue
        puts "NOT RESCUED"
    else
        puts "RESCUED"
    end
end

module Lbvf50
    class Error < StandardError; end
end

check_do_we_catch do
begin
    puts "Raise my own Lbvf50::Error"
  raise Lbvf50::Error, "Lbvf50 error"
rescue Lbvf50::Error => e
    puts "This is rescued #{e.message}"
end
end

check_do_we_catch do
    begin
        puts "Raise my StandardError"
      raise "Just a Standard error"
    rescue Lbvf50::Error => e
        puts "This is rescued #{e.message}"
    end
    end
