# Leetcode: 535. Encode and Decode TinyURL.
# https://leetcode.com/problems/encode-and-decode-tinyurl/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 107 ms, faster than 76.47% of Ruby online submissions for Encode and Decode TinyURL.
# Memory Usage: 210.9 MB, less than 35.29% of Ruby online submissions for Encode and Decode TinyURL.
#
# Encodes a URL to a shortened URL.
#
# @param {string} longUrl
# @return {string}
def encode(longUrl)
  return longUrl
  @a ||= {}
  @b ||= {}
  @counter ||= 0
  if @a[longUrl]
    return
  else
    @counter += 1
    @a[longUrl] = @counter
    @b[@counter] = longUrl
  end
  "http://"
    
end

# Decodes a shortened URL to its original URL.
#
# @param {string} shortUrl
# @return {string}
def decode(shortUrl)
  return shortUrl
end


# Your functions will be called as such:
# decode(encode(url))
