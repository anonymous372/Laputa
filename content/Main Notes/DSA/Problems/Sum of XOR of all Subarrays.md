26th Jun 2025 23:17

Status: 
Tags: [[DSA]]

# Problem
Given an array of n integers, find the sum of the bitwise XOR sums of each of its subarrays.
eg: arr = `[2,3,5]`  
sum = 2 + 2^3 + 2^3^5 + 3 + 3^5 + 5 = 21 
sum = 21

Constraints : n => `[1 ,10^5]`
We will need a O(N) or O(N.logN) solution

### Intuition
We have to look at this problem bitwise, calculate the answer bit by bit. like for 0th bit in how many "xored" subarrays it will be set for how many it will be unset. Similarly if we can find this information for all the bit position we will have our sum.
`Note: when i say "xored" subarray it is a number that is subarray's xor`

So how to do that?
Lets take given example in consideration 
	2: 0 1 0 
	3: 0 1 1
	5: 1 0 1
Lets try to figure out in how many subarrays 0th bit is set. 
* We start from `2(010)` 0th bit is unset. +0 subarray's xor will have 0th bit set up till 2
* Move to `3(011)` 0th bit is set and we can make subarrays `[2,3]` & `[3]` using 3 so for +2 subarrays.
* Move to `5(101)` 0th bit is set and we can make subarray `[5]` which means +1 subarray's xor
For total 3 subarrays the 0th bit is set that means `sum = sum + 3;`
Now we calculate this for all bit position
* For 0th bit 3 subarrays will have 0th bit set
* For 1st bit 3 subarrays will have 1st bit set
* For 2nd position 3 subarrays will have this 2nd bit set

That means total sum:
`sum = 3*(4) + 3*(2) + 3*(1) = 21` 
`sum = 21`

OK so we have something 
Now the only problem here is how do we efficiently calculate the number of "xored" subarrays that will have `ith` bit set

See the code:
We start loop `i: 0 to 30` 
* For each bit first count the number of sabarrays that start with 0th element and have odd number of `ith` bits set. 
* We do that by keeping a flag `odd` that keeps count if number of ones or odd or even and a counter `c_odd`
* Now we have the count of subarrays that are starting with 0th element & have odd number of times `ith` bit set now we want for all the subarrays 
* We traverse `j:0 to n` adding to sum (only the `ith` bit sum we add) of xor of subarrays that start at `jth` element and have in each iteration. If the `jth` elements `ith` bit is not set then the subarrays whose xor will have `ith` bit remains same `c_odd`
* But if the `jth` elements `ith` bit is set then we recalculate `c_odd = n - j - c_odd;`  what this means? It has two parts `n-j`: Its the number of subarrays starting from `jth` element and second part `n - j - c_odd` subtracting c_odd means is flipping, the subarrays whose xor had `ith` bit unset will have `ith` bit set now cause we just encountered a `1` and its gone.
* We iterate all elements add to sum and recalculate count of subarrays whose xor will have `ith` bit set.
* Now we do this for all tht `ith` bit position then we will have our answer.
### Code

![[Image Resizer Clipboard (1).png]]

#### Complexity
```
Time: O(n.logn)
Space: O(1)
```

## References
[GFG: Article](https://www.geeksforgeeks.org/sum-of-xor-of-all-subarrays/)
[CF:Comment](https://codeforces.com/blog/entry/105589)