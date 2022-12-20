// Leetcode: 841. Keys and Rooms.
// https://leetcode.com/problems/keys-and-rooms/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 12 ms, faster than 37.10% of Go online submissions for Keys and Rooms.
// Memory Usage: 4.1 MB, less than 83.87% of Go online submissions for Keys and Rooms.
// 2022.12.20 Daily Challenge.
func canVisitAllRooms(rooms [][]int) bool {
  n := len(rooms)
  counter := 0
  v := make([]bool,n)
  q := make([]int,0)
  q = append(q,0)
  v[0] = true
  for 0 != len(q) {
    x := q[0]
    q = q[1:len(q)]
    counter += 1
    for _,y := range rooms[x] {
      if v[y] {
        continue
      }
      v[y] = true
      q = append(q,y)
    }
  }
  return n == counter
}
