p "alias x='ruby 20190706_Saturday/20190706.rb'" 

# Amazon Sinatra app.

require 'sinatra'
require 'json'
require_relative 'amazon.rb'
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

# it's checkmate (i.e. black's king is under amazon's attack and it cannot make a valid move);
get '/d3e4checkmate' do
    obj = [
        {type:'cross-diagonal', cells: ['d5','e5','f5','f4','f3']},
    ]
    content_type :json
    obj.to_json
end
get '/d3e4checkmate_code' do
    obj = [
        {type:'cross-diagonal-new', cells: Amazon.new.checkmate('d3','e4')},
    ]
    content_type :json
    obj.to_json
end

# orange pluses refer to check positions
# it's check (i.e. black's king is under the amazon's attack but it can reach a safe square in one move);
get '/d3e4check' do
    obj = [
        {type:'cross', cells: [
            'a8','e8',
            'b7','e7', 'h7',
            'c6','d6','e6','f6','g6',
            'c5','g5',
            'a4','b4','g4','h4',
            'g3',
            'f2','g2',
            'e1','h1'
        ]},
    ]
    content_type :json
    obj.to_json
end
get '/d3e4check_code' do
    obj = [
        {type:'cross-new', cells: Amazon.new.check('d3','e4')},
    ]
    content_type :json
    obj.to_json
end


# black's king is on a safe square and it can make a valid move.
# and green circles denote safe squares.
get '/d3e4safe' do
    obj = [
        {type:'circle', cells: [
            'b8', 'c8', 'd8', 'f8', 'g8', 'h8',
            'a7', 'c7','d7','f7','g7',
            'a6', 'b6', 'h6',
            'a5', 'b5', 'h5',
            'a3', 'b3', 'h3',
            'a2', 'b2', 'h2',
            'a1', 'b1', 'c1', 'd1', 'f1', 'g1'
        ]},
    ]
    content_type :json
    obj.to_json
end

