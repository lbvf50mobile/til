# Inheritahce chain of raise RuntimeError => StandardError => Exception => Object => BasicObject
begin
    raise
rescue 
    puts "Standard raise error class: #{$!.inspect}"
    p "Raise %s" % $!.inspect
    p "RuntimeError parent %s" % RuntimeError.superclass.inspect
    p "StandardError parent %s" % StandardError.superclass
    p "Exception parent %s" % Exception.superclass
    p "Object parent %s" % Object.superclass
    p "BasicObject parent %s" % BasicObject.superclass.inspect
    
end