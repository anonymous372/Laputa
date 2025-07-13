10th Jun 2025 11:22

Status: 
Tags: [[Graphs]]  [[DSA]] 

## For Undirected Graph
For both the kind of traversal BFS or DFS we keep a visited array and a parent element for each node. Whenever there comes **a node that is already visited and its not the parent of current node**  that means there is a "CYCLE in the Graph"

### Using BFS
* Make a queue of pairs storing <Node, Parent Node> and a visited array.
* Push the initial node with `null` as parent and mark it visited and then start BFS
* Traverse the neighbors of current node, if node is not a parent push it in the queue with current node as parent.
* If there is a node that is already visited and this node is not the parent of current node
* That means there is "CYCLE in the Graph"

### Using DFS
* Make a visited array and start DFS on that with current node and `nullptr` as parent.
* Traverse the neighbors of current node, if node is not a parent call DFS on it with current node as parent.
* If there is a node that is already visited and this node is not the parent of current node
* That means there is "CYCLE in the Graph"


## For Directed Graph

### Using BFS 
We can use [[Topological Sort by BFS using Kahn's Algo]] It will help us determine weather a graph has cycle or not.

### Using DFS
We perform a DFS while maintaining a visited array and dfsVisited array 
visited array: It will keep track of all the elements that are visited in the Graph so far.
dfsVisited array: It will keep track of elements that are visited in the current dfs call.
##### Mainitaining dfsVisited:
When DFS is called for a node set dfsVisited = `true` when iteration over all the neighbors of current node is done mark dfsVisited = `false` for current node.

#### Algorithm
* Initialize visited and dfsVisited array as false 
* Traverse through nodes from 1 to N if its unvisited start DFS on it.
* Set visited and dfsVisited `true` for current node and start iterating over its nodes neighbors.
* If the neighbor is already visited and its dfsVisited = `false` (means its from a different dfs call) then call DFS on this neighbo.
* Else If the neighbor is visited and dfsVisited = `true`(means its visited in current DFS call) then the graph has a "CYCLE" and you can return.
* When iteration over all the neighbors for current node is done mark dfsVisited = `false` for current node.

## References
[Undirected graph cycle using BFS](https://www.geeksforgeeks.org/detect-cycle-undirected-graph/#using-breadth-first-search-ove-time-and-ove-space)
[Undirected graph cycle using DFS](https://www.geeksforgeeks.org/detect-cycle-undirected-graph/#using-depth-first-search-ove-time-and-ove-space)
[Directed graph Cycle using DFS](https://www.geeksforgeeks.org/detect-cycle-in-a-graph/)
