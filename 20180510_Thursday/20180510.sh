# Read and fill ENV from a file. Change bash variable environment variable changes too.

# clear file https://stackoverflow.com/a/13575627/8574922
echo -n "" > 20180510_Thursday/token

# write token to the file
echo "this is a tocken" > 20180510_Thursday/token

# Create variable with tocket
TOKEN20180510=$(cat '20180510_Thursday/token'); export TOKEN20180510

# Read this token from Ruby
ruby -e "p ENV['TOKEN20180510']"

# Put new value to a file
echo "this is a token: #2." > 20180510_Thursday/token

# Reasign without export.
TOKEN20180510=$(cat '20180510_Thursday/token');

# read with ruby one more time
ruby -e "p ENV['TOKEN20180510']"

