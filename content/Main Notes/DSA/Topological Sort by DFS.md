10th Jun 2025 15:06

Status: 
Tags:  [[Graphs]]  [[DSA]]

# Topological Sort using DFS
We are given a Directed Graph and we have to find a topological sorting for the given graph
We perform traditional DFS on a directed graph while maintaining a stack. The stack stores the order in which the nodes were completely traversed. 
E.g. given a tree you start DFS on root and push root in stack when all its childrens are traversed and so on. Then the first elements that will be pushed inside stack will be the leaves then their immediate parents and the last node to be pushed will be the root node. If you see closely that is indeed a **"Topological Ordering of nodes"** just in reverse

We pop out elements from stack and push them in a result vector and Voilla!! we have our **Topological Ordering**.

#### Algorithm
* Initialize a visited array and an empty stack and start iterating over nodes.
* Find an unvisited node star DFS on it passing visited array and stack in the call.
* Mark the current node visited & start iterating over its non visited neighbors. 
* After all the neighbors are traversed for current node push it in the stack.
* Perform DFS until all the nodes are visited.
* After DFS make result array pop out elements from stack and push them in result and thts our Topological Ordering.

##### Note
If the given Directed Graph has cycles you will have to implement [[Cycle in a Graph]] using DFS over the top of it. Thats a problem with Topological ordering with DFS. Whereas using [[Topological Sort by BFS using Kahn's Algo]] does manage cycles in graph easily.




## References
[Topological Sorting using DFS](https://www.geeksforgeeks.org/topological-sorting/)