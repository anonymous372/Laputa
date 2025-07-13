27th Jun 2025 15:24

Status: 
Tags: 

# Patterns
#### 1. Building up a solution from small/trivial to big/required
Eg: [Longest subsequence repeated k times](https://leetcode.com/problems/longest-subsequence-repeated-k-times/description) 
Here So in this we start with `candidates` array that has all the characters that appear atleast k times cause for a string to repeat k times its all characters must have a frequence greater than k. So out initial solutions are all characters that occur at least k times we pick one of them and try appending all the characters from candidate into it and see if this new string  repeats at least k times.
Demo: `s = letsleet`  k = 2  so here our initial solutions `queue = [l, e, t]` cause they all occur atleast 2 times
Now we take out `l` and make string `ll`, `le`, `lt` and see if any of them occur 2 times  `le and lt` occur "atleast" 2 times add them two `queue = [e, t, le, lt]` and build up your solution repeating the same process for each of the solutions from queue until its empty. Finally you will have the longest subsequence that repeat k times. `ans = "let"`
Similar Problem: [K Max. Sum Combinations](https://www.interviewbit.com/problems/maximum-sum-combinations/)

`[Note this pattern generally use some queue cause you are doing BFS types search/build up]`



## References
