14th Jun 2025 20:28

Status: 
Tags: [[DP]]  [[DSA]]

# Longest Common Subsequence
##### Given 2 strings s1=`abcde` s2=`ace` find length of longest common subsequence Ans: 3 ("ace")
### Approach 1
Make a 2D array mxn size and fill it traversing both the strings
Traversal is like start with a character of s1 and travers s2 and get answer for "a" vs "ace"
then next loop get answer for "ab" vs "ace" and so on until final loop "abcde" vs "ace"
```
i goes from 1 to m:         // for s1
	j goes from 1 to n:    // for s2
		if s1[i] and s2[j] characters match
			dp[i][j] is dp[i-1][j-1] + 1
		else
			dp[i][j] is max of just top & just left dp elements 
```

#### Complexity
```
Time: O(m*n)
Space: O(m*n)
```

### Approach 2 (Space Optimized)
We notice that at any particular time to update `dp[i][j]` we just need the above row and current row we are traversing
so we just make 2 arrays `cur` & `prev` of size (n+1) initialize them with 0

```
i goes from 1 to m:         // for s1
	j goes from 1 to n:    // for s2
		if s1[i] and s2[j] characters match
			cur[j] is prev[j-1] + 1
		else
			cur[j] is max of just cur[j-1] & prev[j] //left & top elements
	prev = cur            // set prev as cur for next iteration
```

#### Complexity
```
Time: O(m*n)
Space: O(n)
```


## References
[GFG: LCS](https://www.geeksforgeeks.org/dsa/longest-common-subsequence-dp-4/)
[LC: LCS](https://leetcode.com/problems/longest-common-subsequence/)