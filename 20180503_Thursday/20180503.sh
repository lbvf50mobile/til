# Create and then read Environment Variable in Ruby Script.

THE_BRAND_NEW_VAR="This is a brand new var."
export THE_BRAND_NEW_VAR

ruby -e "p ENV['THE_BRAND_NEW_VAR']"
