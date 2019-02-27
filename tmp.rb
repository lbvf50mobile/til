require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/qmKLsQcqeEBckLx2q
3.times do puts "" end
puts "singlePointOfFailure".cyan
puts ""




require "minitest/autorun"
require 'benchmark'
require 'oj'
require 'ostruct'

# https://www.geeksforgeeks.org/detect-cycle-in-a-graph/
# https://www.geeksforgeeks.org/bridge-in-a-graph/


    def _add(u,v, graph)
      graph[u].nil? ? graph[u] = [v] : graph[u].push(v)
    end
  
    def bridgeUtil(u,visited, parent, low, disc, hash)
      visited[u] = true
      disc[u] = hash[:time]
      low[u] = hash[:time]
      hash[:time] += 1
      hash[:graph][u].each do |v|
        if(visited[v].nil?)
            parent[v] = u
            bridgeUtil(v, visited, parent, low, disc, hash)
            low[u] = [low[u], low[v]].min
              if low[v] > disc[u]
                hash[:answer].push([u,v])
              end
        elsif v != parent[u]
          low[u] = [low[u], disc[v]].min
        end
      end
    end
  
    # DFS based function to find all bridges.
    # It uses recusive function bridgeUntil()
    def bridge(hash)
        visited = {}
        graph_size = hash[:graph].size
        disc = [Float::INFINITY] * graph_size
        low = [Float::INFINITY] * graph_size
        parent = [-1] * graph_size
        (0...graph_size).each{|u|
          bridgeUtil(u, visited, parent, low, disc, hash)
        }
        hash[:answer]
  
    end
  


def singlePointOfFailure(connections)
    graph = {}
    hash = {answer:[], time:0, graph: graph}
    connections.each_with_index do |row, u|
        row.each_with_index do |cell, v|
            _add(u,v,graph) if 1 == cell 
        end
    end
    bridge(hash).size
end

describe "countClouds" do
    it "shold works" do
        a = [[0, 1], [1, 0]]
        assert_equal 1,singlePointOfFailure(a)
    end
    it "shold works" do
        a = [[0,1,1], 
        [1,0,1], 
        [1,1,0]]
        assert_equal 0,singlePointOfFailure(a)
    end
end
