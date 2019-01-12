func = -> (name:, **_) { name + 's' }
user = { name: 'X', type: 'hash' }
p func.(user)