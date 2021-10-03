# Leetcode: 174. Dungeon Game.
# https://leetcode.com/problems/dungeon-game/
# @param {Integer[][]} dungeon
# @return {Integer}
def calculate_minimum_hp(dungeon)
  # Top-Bottom DP. 
  # Knight enters each room with minimal health equal 1.
  # Need to calculate addition to stay a knight allive.
  # Addition if negative: - (room + 1).
  # Addition if room >= 0: 0.

end
