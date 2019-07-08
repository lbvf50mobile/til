p "alias x='ruby 20190706_Saturday/20190706.rb'" 

# Amazon Sinatra app.

require 'sinatra'
set :public_folder, File.dirname(__FILE__) + '/static'
get '/' do
    erb "index.html"
end
