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

class Graph
    def initialize(size)
      @V = size
      @graph = {}
      @time = 0
      @answer = []
    end  
    def _add(u,v)
      @graph[u].nil? ? @graph[u] = [v] : @graph[u].push(v)
    end
    def addEdge(u,v)
      _add(u,v)
      _add(v,u)
    end
    def inspect
      @graph.to_s
    end
  
    def bridgeUtil(u,visited, parent, low, disc)
      visited[u] = true
      disc[u] = @time
      low[u] = @time
      @time += 1
      @graph[u].each do |v|
        if(visited[v].nil?)
            parent[v] = u
            bridgeUtil(v, visited, parent, low, disc)
            low[u] = [low[u], low[v]].min
              if low[v] > disc[u]
                @answer.push([u,v])
              end
        elsif v != parent[u]
          low[u] = [low[u], disc[v]].min
        end
      end
    end
  
    # DFS based function to find all bridges.
    # It uses recusive function bridgeUntil()
    def bridge
        visited = {}
        disc = [Float::INFINITY] * @V
        low = [Float::INFINITY] * @V
        parent = [-1] * @V
        (0...@V).each{|u|
          bridgeUtil(u, visited, parent, low, disc)
        }
        @answer
  
    end
  
end

def singlePointOfFailure(connections)
    g1 = Graph.new(connections.size)
    connections.each_with_index do |row, u|
        row.each_with_index do |cell, v|
            g1._add(u,v) if 1 == cell 
        end
    end
    g1.bridge().size
end

describe "countClouds" do
    it "shold works" do
        a = [[0, 1], [1, 0]]
        assert_equal 1,singlePointOfFailure(a)
    end
end
