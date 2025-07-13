9th Jun 2025 20:02

Status: 
Tags:  [[Graphs]]  [[DSA]]
# Topological Sort
Given a **Directed Acyclic Graph** having **V** vertices and **E** edges, your task is to find any ***Topological Sorted order** of the graph.

**Topological Sorted order:**  It is a linear ordering of vertices such that for every directed edge 
  **u -> v**, where vertex **u** comes before **v** in the ordering.

`[Note: Topological Sorting is only possible for DAGs]`

### Kahn's Algorithm
It gives the Topological Ordering for a "Directed Graph" or finds if graph has a Cycle or not.
* We represent the graph in an Adjacency List and make Indegree array for each node.
* Push all the nodes with `indegree = 0` in a queue and start BFS (slightly diff.) on the queue.
* Pop out an element from queue increment counter `visited++;` **iterate all the neighbors of the current node** & **decrement their indegrees by 1**
* If the indegree for some neighbor becomes 0 => Push it in the queue and continue BFS
* The order in which you take out element from queue is the **Topological Sorting of the Graph**
* If our queue becomes empty and there number of `visited` nodes != number of nodes
	"GRAPH has CYCLE".


### Complexity
<code><h6>Time: O(V+E) <br>Space: O(V)     (Assuming adjacency list is given)</h6></code>


## References
[Kahn's Algorithm Topological Sorting by BFS](https://www.geeksforgeeks.org/topological-sorting-indegree-based-solution/)
