# [cellsJoining](https://app.codesignal.com/arcade/code-arcade/secret-archives/n6KRaxBdcFv5JjQgM)


You are writing a spreadsheet applicaiton for an ancient operation system. The sytem runs on a computer so old that in can only display ASCII graphics. Currently you are sturc with implementing the cells joing algorithm.

You are given a `table` in ASCII graphics, where the following characters are used for borders: `+`, `-`, `|`. The rows can have different heights and the columns can have different widths. Each cell has an area greater than `1` (excluding the borders) and can contain any ASCII characters exculding `+`, `-`, and `|`.

The algorithm you want to implement should merge the cells wihin a given rectangular part of the table into a single cell by removing the borders between them (i.e. replsce them with space characters (` `) and replace redundant `+`s with correct border symbols). The cells to join are represented by the coordinates of the cells at the extreme bottom-left and top-right of the area.

## Example

For

```
table = ["+----+--+-----+----+",
         "|abcd|56|!@#$%|qwer|",
         "|1234|78|^&=()|tyui|",
         "+----+--+-----+----+",
         "|zxcv|90|77777|stop|",
         "+----+--+-----+----+",
         "|asdf|~~|ghjkl|100$|",
         "+----+--+-----+----+"]
```

and `coords = [[2,0],[1,1]]`, the output shuld be

```
cellsJoining(table, coords) = ["+----+--+-----+----+",
                               "|abcd|56|!@#$%|qwer|",
                               "|1234|78|^&=()|tyui|",
                               "+----+--+-----+----+",
                               "|zxcv 90|77777|stop|",
                               "|       +-----+----+",
                               "|asdf ~~|ghjkl|100$|",
                               "+-------+-----+----+"]
```

## Input/Output

- **[execution time limit] 4 seconds (rb)**
- **[input] array.string table**
a table in ASCII graphics. `|` and `-` characters represnt borders, and `+` characters represent their intersections. It is guaranteed that there are no joined cells in the table. It's also guaranteed that the table occupies the entire rectangualr array, i.e. its outer borders occupy the leftmost and the rightmost columns of the array as well as it's topmost and bottommost rows.

 *Guaranteed constraints:*
 `3 <= table.lenght <= 25`,  
 `3 <= table[i].length <= 80`,   
 `table[i].length == table[j].length`

 - **[input] array.array.integer coords**  
 `coords[0]` coontains 0-based row and column indices (given in that exact order) of the extreme bottom left cell in the area to join, and `coords[1]` contain indices of the extreme top right cell of tha region.  
 It's guaranteed that there are at leasttwo cells to be joined, and that cells with the given indecesdo exist in the table.

 The rows are numbered from to to bottom while the columns are numbered from left to right.

 *Guaranteed constaints:*  
 `coords.length = 2`, 
 `coords[i].length = 2`,    
 `0 <= coords[1][0] <= coords[0][0] < 10`,  
 `0 <= coords[0][1] <= coords[1][1] <=25`. 