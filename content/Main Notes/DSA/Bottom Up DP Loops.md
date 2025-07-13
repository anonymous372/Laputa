18th Jun 2025 22:32

Status: 
Tags: 

## 0/1 Knapsack Loop
( I am naming this kinda loop 0/1 knapsack cause I learnt it here [GFG: 0/1 Knapsack](https://www.geeksforgeeks.org/problems/0-1-knapsack-problem0945/1) )

##### Its a double loop 
* Outer Loop: Traverses over the given array whose values can be used to achieve some sum.
		This loop being outer kinda helps keeping the fact that values can be used at most once. 

* Inner Loop: Traverses over the search space in **"reverse order"** 
		Search Space can be maximum weight of values, possible sums to make etc
		Reverse order ensures the search space is satisfied bottom-up

#### Working Example
For array possible sums these `[0,1,2,3,4,5,6]` we wanna see what all we can make using elements `[2,3]`, Initially we say yes we can make 0 then we start our outer loop 
Using `2` what all we can make:  
	Start inner loop from 6 down to 2 (cause going below 2 does make sense)
	 6-2=4 is smn we cant make, we go to 5, then 5-2 is also we cant make yet then go till 2 then we see 2-2=0 yes 0 is smn we can make 
	 SO after this "Using 2" Loop we see we can make `[0, 2]`
Now we move to next element `3`
Using `3` what all we can make:  
	Start inner loop from 6 down to 3 
	 6-3=3 is smn we cant make, we go to 5, then 5-3=2 Yes we can make 2 hence we can make 5 as well using 3, then we see 3-3=0 yes 0 is smn we can make so we can make 3 as well, 
	 SO after this "Using 3" Loop we see we can make `[0, 2, 3, 5]`

After all iterations we see `[0,2,3,5]` are the possible sums taht we can make usign `[2,3]` 


This combination of loop is used in DP for 0/1 Knapsack types problem it ensures that a given value is used atmost once in the solution

### Code:
![[Image Resizer Clipboard.png]]

### Similar Problems
 [GFG: 0/1 Knapsack](https://www.geeksforgeeks.org/problems/0-1-knapsack-problem0945/1)
[LC: Partitions Sum](https://leetcode.com/problems/partition-equal-subset-sum/description/)

## References
