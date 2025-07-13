14th Jun 2025 11:30

Status: 
Tags: [[Graphs]]  [[DSA]]

# Disjoint Set Union
Its a data structure/technique that helps in graph/tree algorithms finding weather two components are connected of not. It does this by making each component a tree like structure where each node has a parent/representative & parent of root is itself. 
When you find a connecting edge between two components you merge their roots to make a single components
This data structure helps in
* Kruskal's Algorithm uses this to find cycles in an **"undirected graph"**
* It can be used to count the connected components: make a DSU of whole graph then count the distinct representative nodes (count elements that are repr. of themselves).

### Operations
Making DSU has 3 operations
* `make_set(int a)`
* `find_set(int a)`
* `union_set(int a, int b)`

###### Note: Only `find_set` operation is that affects complexity cause `make_set` is `O(1)` and `union_set` does two calls of `find_set` and rest is `O(1)`
#### Naive Approach
To join two components you just find their respective repr. and merge one with another

```
Time: O(N)           // for one find_set query
Space: O(N)
```

### Optimal Approach
We use Path Compression and Union by Rank/Size
```
Time: ~O(1)          // amortized complexity for find_set 
Space: O(N)          // uses rank and parent array 
```

## CODE
![[Image 4 Optimized from Simple Image Resizer.png]]


## References
[DSU CP Algorithms](https://cp-algorithms.com/data_structures/disjoint_set_union.html)