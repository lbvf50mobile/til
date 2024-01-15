// Leetcode: 2225. Find Players With Zero or One Losses.
// https://leetcode.com/problems/find-players-with-zero-or-one-losses/
// = = = = = = = = = = = = = = 
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 345 ms, faster than 28.22% of Go online submissions for Find
// Players With Zero or One Losses.
// Memory Usage: 28 MB, less than 21.77% of Go online submissions for Find
// Players With Zero or One Losses.
// 2024.01.15 Daily Challenge.

package main

import "sort"

type Player struct {
	id    int
	win   int
	lose  int
	total int
}

func findWinners(matches [][]int) [][]int {
	// 1. Fill map.
	players := make(map[int]*Player)
	for _, mtch := range matches {
		wID, lID := mtch[0], mtch[1]
		winner, loser := players[wID], players[lID]
		if nil == winner {
			winner = &Player{wID, 0, 0, 0}
			players[wID] = winner
		}
		if nil == loser {
			loser = &Player{lID, 0, 0, 0}
			players[lID] = loser
		}
		winner.win += 1
		loser.lose += 1
		winner.total += 1
		loser.total += 1
	}
	// 2. Fill answer slices.
	winners := make([]int, 0)
	losers := make([]int, 0)
	for _, v := range players {
		if 0 == v.lose {
			winners = append(winners, v.id)
		}
		if 1 == v.lose {
			losers = append(losers, v.id)
		}
	}
	// 3. Sort answer slices.
	sort.Ints(winners)
	sort.Ints(losers)
	// 4. Return.
	return [][]int{winners, losers}
}
