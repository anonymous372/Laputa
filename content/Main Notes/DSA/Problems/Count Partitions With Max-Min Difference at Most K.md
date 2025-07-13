8th Jun 2025 20:22

Status: 
Tags: [[Sliding Window]]  [[DP]]  [[Leetcode Contest]]  [[DSA]] 


![[Pasted image 20250608202312.png]]

### Approach
* Combination of DP & Sliding window works here if, we have answere for `[0, i-1]` array then we can calculate for `[i]` 
* We build a window/subarray that is valid and now we add `num[i]` and then make it valid again by popping element from left so that the `diff. of min and max of window <= k` 
* Now to calculate the Count of partitions up till `[i]` we do this. 
		`dp[i] = dp[i-1] + dp[i-2]...+dp[j]`   Here `j+1` is the index till which our window is valid

Now why this DP relation works? Yea I agree its hard to come on to this in a contest or interview, lets break it dow.

Assume case: `nums = [9, 4, 1, 3, 7]`  &   `k = 4`  
* `dp[0]` => For element `[9]` window is: `[9]`its trivial case => 
		`dp[0] = 1.  ⭕️
*  `dp[1]`  => For element `[4]` window: `[9,4]` we make it valid => window: `[4]`
		As current element: 4 is the only element in window (does not get along with prev. elements ) that means
		This is the only partition: possible: `[9] [4]` This comes simply by `dp[i-1]` (here, i=1)
		And `[9, 4]` is not a valid partition cause diff. > k
		`dp[1] = 1`   ⭕️

##### ⭐️ IMPORTANT TO UNDERSTAND HOW DP IS HELPING HERE
`[Note: What does dp[i-1]] represent that count all the cases that dp[i-1] has by simply appending ith element [ nums[i] ] as separate partition
	`dp[i-2] would mean count all the cases of dp[i-2] by appending i-1_th and i_th element combined as a separate partition => [ nums[i-1], nums[i] ] `
]`

Hopefully you understand what written above Now lets continue to see our example

* `dp[2]` => For element `[1]` its valid so, window: `[4,1]`, Now this is where things get interesting and DP actually helps.
		`dp[2] = dp[1] + dp[0]`  for `i=2` we add dps of `i=1` casuse its valid 
		& add `i=0` it is the first element that is not in the window for which window is invalid.
		`dp[1]` counts => `[9] [4] [1]`   => 1 partition
		`dp[0]` counts => `[9] [4,1]`       => 1 partition
		`dp[2] = dp[1] + dp[0] => 2 `  ⭕️
* `dp[3]`  => For element 3 its valid too so, window: `[4,1,3]` 
		`dp[3] = dp[2] + dp[1] + dp[0]`
		`dp[3] = 4`   ⭕️
*  `dp[4]`  => For element 7 its invalid so make the window valid, window: `[3,7]` 
		`dp[4] = dp[3] + dp[2]`   (`we count till i=2 => [1] cause is the 1st elmnt thts invalid`)
		`dp[3] = 6.  ⭕️



## References
[Problem 3578](https://leetcode.com/problems/count-partitions-with-max-min-difference-at-most-k/description/)