10th Jun 2025 17:44

Status: 
Tags: [[SCC]]  [[Graphs]]  [[DSA]]

## Strongly Connected Components (SCC)
![[Pasted image 20250610174712.png]]
	                Here each color is a separate SCC,
###### SCC:  Its a group of nodes where from any node all the other nodes are reachable.
eg: from 0=> 1 and 2 are reachable so they from a component, 3 is also reachable but from 3: 0,1,2 are not reachable.

## Kosaraju's Algorithm
This algorithm has 3 main steps.
1. Find the Topological Ordering of the graph using DFS *(i know the graph can contain cycle its okk).* DFS approach we make a stack which has the ordering 
2. Transpose the Graph: reverse all the directed edges if it was a->b make it b->a.
3. Perform a DFS on this Transpose Graph taking nodes in the Topological Ordering of the "original graph" & marking visited nodes. *(We take non visited nodes obv.)*
*(these were the 3 main steps of Algorithm)*
4. Each DFS on transpose graph will traverse all the nodes of a new SCC then we continue find next unvisited node from Topological ordering perform DFS it will give a new SCC.


### Complexity
<code><h6>Time: O(V+E)    <br>Space: O(V+E)                 (Storing transpose of graph)</h6></code>
## References
[Yt: Kosarajus Algo](https://www.youtube.com/watch?v=V8qIqJxCioo&list=PLgUwDviBIf0rGEWe64KWas0Nryn7SCRWw&index=28)