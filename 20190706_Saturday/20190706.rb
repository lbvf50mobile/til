p "alias x='ruby 20190706_Saturday/20190706.rb'" 
require 'sinatra'

get '/' do
    File.read('20190706_Saturday/index.html')
end