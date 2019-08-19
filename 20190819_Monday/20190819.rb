p "alias x='ruby 20190819_Monday/20190819.rb'" 

# Ruby: Object#freeze and strange unworking resque.

# https://apidock.com/ruby/Object/freeze

x = {a: 1}
x[:b] = 2
p x
x.freeze
begin
    x[:b] = 222
rescue StandardError  => e
    p e.class
end
x[:b] = 222 rescue RuntimeError # https://thoughtbot.com/blog/don-t-inline-rescue-in-ruby (why this still prints?)
p x

