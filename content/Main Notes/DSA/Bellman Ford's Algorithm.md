10th Jun 2025 22:03

Status: 
Tags: [[Graphs]]  [[DSA]]

# Bellman Ford's Algorithm
Helps find single source shortest path distance to all node. Shortest distance from one node to all. It can handle "Negative Cycles" too unlike Dijkstra.

It finds shortest path by "relaxing the edges" V-1 times ensuring 
##### Relaxing an edge
Reducing the shortest distance to node `v` if a shorter path exists through `u`.
		`dist[v] = dist[u] + wt // wt is weight of edge u->v`

#### How it deals with negative cycles
After performing V-1 iterations of relaxing all the edges. We perform one more iteration if any edge is relaxed in this iteration that means there exists a "negative Cycle".

### Crux
```
for each edge in edgeList:     
	// if current edge can reduce overall distance to v, update.
	if dist[u] + weight < dist[v]:  
		dist[v] = dist[u] + weight
```

### Code

![[Optimized Image from Simple Image Resizer (2).png]]

### Complexity
<code><h6>Time: O(E * V)  <br>Space: O(V)   </h6></code>



## References
