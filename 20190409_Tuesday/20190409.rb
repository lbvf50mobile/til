p "alias x='ruby 20190409_Tuesday/20190409.rb'" 

# Ruby election winners problem solution.

# Elections are in progress!
# Given an array of the numbers of votes given to each of the candidates so far,
# and an integer k equal to the number of voters who haven't cast their vote yet,
# find the number of candidates who still have a chance to win the election.

# The winner of the election must secure stricle more votes then any other candidate.
# If two ore more candidates resive teh same (maximum) number of votes, assume
# there is no winner at all.

def electionsWinners(votes, k)
    m = votes.max
    m_count = 0
    winners = votes.select{|x|
      m_count += 1 if m == x
      x+k > m }.size
     if( 0 == winners)
        1 == m_count ? 1 : 0
     else 
       winners
     end
end

def electionsWinners1(votes, k)
    m = votes.max
    k == 0 ? (votes.count(m) == 1 ? 1 : 0) : votes.count{|x| x + k > m }
end

  
  require 'minitest/autorun'
 tests =  [
     {votes: [2, 3, 5, 2], k: 3, answer: 2},
     {votes: [1, 3, 3, 1, 1], k:0 , answer:0 },
     {votes: [5, 1, 3, 4, 1], k: 0 , answer: 1},
     {votes: [1, 1, 1, 1], k: 1, answer: 4},
     {votes: [16,16,16,2,2,2], k:1, answer: 3}
  ]

  describe "electionnwinners" do
    it "works" do
        tests.each do |test|
            votes = test[:votes]
            k = test[:k]
            answer = test[:answer]
            assert_equal answer,electionsWinners(votes,k)
            assert_equal answer,electionsWinners1(votes,k)
        end
    end
  end

