10th Jun 2025 21:13

Status: 
Tags: [[Graphs]]   [[DSA]]

# Dijkstra's Algorithm
Helps find single source shortest path distance to all node. Shortest distance from one node to all.
It uses a priority queue to hold edges in form of `<weight, node>` pair in increasing order of weight. We take out the minimum weight edge and process that node's neighbors. For each neighbor if the distance to tht neighbor is reduced using this edge we push this neighbor edge in priority queue.

`NOTE: Dijkstra's Algorithm cannote handle or detect Negative Cycles ❌ as it assumes all the wieight are positive weights.` 
`In case if negative cycles can exist use Bellman Ford's Algorithm`

### Algorithm
We are given a Adjacency List and a starting node `S`.
1. Make a distance array `dist` with all the distance = infinity and distance to `S` = 0.
2. Make a min priority queue `pq` of `<weight, node>` and push `{0, S}` perform modified BFS using this min `pq`.
3. Take out top element from `pq` and iterate over its neighbors.
4. If distance to this top element plus edge weight to neighbor node < distance to neighbor then push this edge into prioirty queue and update distance to this neighbor.

Perform This until the `pq` becomes empty and .

#### Step 4 of Algorithm in code
![[image_code_dijkstra.png]]


### Complexity
<code><h6>Time: O(E*logV)     (Min Heap)<br>Space: O(V)     (Min Heap)</h6></code>


## References
