p "alias x='ruby 20190706_Saturday/20190706.rb'" 

# Amazon Sinatra app.

require 'sinatra'
require 'json'
set :public_folder, File.dirname(__FILE__) 
get '/' do
    File.read('20190706_Saturday/index.html')
end
get '/one' do
    obj = [
        {type:'cross', cells: ['a3','a5']},
        {type:'cross-new', cells: ['b6','b7']},
        {type:'circle', cells: ['c4','c3']},
        {type:'circle-new', cells: ['c4','d4']},
        {type:'cross-diagonal', cells: ['c5','c8']},
        {type:'cross-diagonal-new', cells: ['c3','d4']},
        {type:'king', cells: ['d5']},
        {type:'amazon', cells: ['d7']},
        {type:'square', cells: ['f1']},
        {type:'square-new', cells: ['f2']}
    ]
    content_type :json
    obj.to_json
end
get '/king-d3amazon-e4' do
    obj = [
        {type:'king', cells: ['d3']},
        {type:'amazon', cells: ['e4']},
    ]
    content_type :json
    obj.to_json
end
get '/d3e4checkmate' do
    obj = [
        {type:'cross-diagonal', cells: ['d5','e5','f5','f4','f3']},
    ]
    content_type :json
    obj.to_json
end