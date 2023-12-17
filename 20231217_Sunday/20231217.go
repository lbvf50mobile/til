// Leetcode: 2353. Design a Food Rating System.
// https://leetcode.com/problems/design-a-food-rating-system/

package main

import (
	"container/heap"
)

type Item struct {
	food   string
	rating int
	index  int
}
type FoodItem struct {
	itemInHeap  *Item
	itemCuisine *Cuisine
}

type Cuisine []*Item

func (q Cuisine) Len() int { return len(q) }
func (q Cuisine) Less(i, j int) bool {
	if q[i].rating == q[j].rating {
		return q[i].food < q[j].food
	} else {
		return q[i].rating > q[j].rating
	}
}
func (q Cuisine) Swap(i, j int) {
	q[i], q[j] = q[j], q[i]
	q[i].index = i
	q[j].index = j
}
func (pq *Cuisine) Push(x any) {
	n := len(*pq)
	item := x.(*Item)
	item.index = n
	*pq = append(*pq, item)
}

func (pq *Cuisine) Pop() any {
	old := *pq
	n := len(old)
	item := old[n-1]
	old[n-1] = nil  // avoid memory leak
	item.index = -1 // for safety
	*pq = old[0 : n-1]
	return item
}

func (q *Cuisine) update(item *Item, rating int) {
	item.rating = rating
	heap.Fix(q, item.index)
}

type FoodRatings struct {
	theCuisines map[string]*Cuisine
	theFood     map[string]*FoodItem
}

func Constructor(foods []string, cuisines []string, ratings []int) FoodRatings {
	total := FoodRatings{make(map[string]*Cuisine), make(map[string]*FoodItem)}
	size := len(foods)
	for i := 0; i < size; i += 1 {
		food := foods[i]
		cuisine := cuisines[i]
		rating := ratings[i]
		// Check does such cuisine exists?
		if _, ok := total.theCuisines[cuisine]; !ok {
			tmp := make(Cuisine, 0)
			total.theCuisines[cuisine] = &tmp
		}
		// Fill heaps.
		heap := *total.theCuisines[cuisine]
		element := Item{food, rating, len(heap)}
		heap = append(heap, &element)
		total.theCuisines[cuisine] = &heap
	}
	// Heapify all heaps and fill theFood map.
	for _, hp := range total.theCuisines {
		hpp := *hp
		for _, it := range hpp {
			fit := &FoodItem{it, hp}
			food := it.food
			total.theFood[food] = fit
		}
		heap.Init(hp)
	}
	return total
}

func (this *FoodRatings) ChangeRating(food string, newRating int) {
	fit := this.theFood[food]
	cu := fit.itemCuisine
	it := fit.itemInHeap
	cu.update(it, newRating)
}

func (this *FoodRatings) HighestRated(cuisine string) string {
	cu := this.theCuisines[cuisine]
	tmp := cu[0]
	el := *tmp
	return el.food

}

/**
 * Your FoodRatings object will be instantiated and called as such:
 * obj := Constructor(foods, cuisines, ratings);
 * obj.ChangeRating(food,newRating);
 * param_2 := obj.HighestRated(cuisine);
 */
