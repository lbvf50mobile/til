# Leetcode: 649. Dota2 Senate.
# https://leetcode.com/problems/dota2-senate/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 126 ms, faster than 57.14% of Ruby online submissions for Dota2
# Senate.
# Memory Usage: 212.3 MB, less than 28.57% of Ruby online submissions for Dota2
# Senate.
# 2023.05.05 Updated.
# @param {String} senate
# @return {String}
def predict_party_victory(senate)
  # Based on the Leetcode's soluton.

  # Number of sentators of each party.
  r,d = senate.count(?R), senate.count(?D)
  # Floating ban count.
  rb, db = 0, 0
  # Queue of sentators.
  q = senate.chars
  # While any party has eligible senators.
  while r > 0 && d > 0
    # Shift the sentaor with turn.
    curr = q.shift
    # If eligible floan a ban of the other party,
    # enqueue again. If not, decrement the floating ban
    # and count the other party.
    if ?R == curr
      if rb > 0
        r -= 1
        rb -= 1
      else
        q.push(?R)
        db +=1 
      end
    else
      if db > 0 
        d -= 1
        db -= 1
      else
        q.push(?D)
        rb += 1
      end
    end
  end
  # Return the party with eligible senators.
  r > 0 ? "Radiant" : "Dire"
end
