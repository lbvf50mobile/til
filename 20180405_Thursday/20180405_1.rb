# Use openscturct
require "ostruct"
car = OpenStruct.new(wheels: 4, engine: 1, sits: 2)
p "Wheels %s" % car.wheels
p "Engine %s" % car.engine
p "Sits %s" % car.sits
