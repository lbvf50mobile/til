# Leetcode: 929. Unique Email Addresses.
# https://leetcode.com/problems/unique-email-addresses/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# https://leetcode.com/explore/challenge/card/september-leetcoding-challenge-2021/639/week-4-september-22nd-september-28th/3989/
# @param {String[]} emails
# @return {Integer}
def num_unique_emails(emails)
  purge = ->str{ 
    local,domain = str.split(?@)
    local.gsub!(/\./,"")
    local.gsub!(/^([^+]+).*/,'\1')
    local + ?@ + domain
  }
  emails.map(&purge).uniq.size
end
