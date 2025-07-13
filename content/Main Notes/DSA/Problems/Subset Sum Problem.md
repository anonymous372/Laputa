3rd Jul 2025 13:20

Status: 
Tags: [[DP]]  [[DSA]]

# Problem
Given an array `arr` of numbers and a `sum` find if there exists a subset of `arr` 
whose sum = `sum`.
Eg: `arr = [2,3,8,10] sum = 11 ` 
For this we can make a subset `[3,8]` whose sum is 11  =>  `True`
if `sum = 6` then we have no subset possible  =>  `False`

### Recursion
We can start with solving problem using this recurrence
```
// pick current element or not pick current element
// This tells using elements from [0.. idx] is making 'sum' possible
solve(arr, idx, sum) = solve(arr, idx-1, sum-arr[idx]) | solve(arr, idx-1, sum)

```

`Note: this can cause TLE for bigger inputs so we will have to memoize.`

### Memoization
There are two changing parameters in the recurrence `idx` and `sum`. We can make a dp array `(n+1) x (sum+1)` size storing value for `solve(arr, n, sum)`, so we dont recalculate values we worked on previously. There are two ways to solve using dp array based on data type.
##### Using boolean DP 
As we have only two states true or false and for the solution we just need one true state and we need to avoid false states so we dont calculate them again and again. So we initialize dp array as all true and whener we find a `(idx, sum)` pair which is not possible we store that in dp
`dp[idx][sum] = false`

##### Using int DP
We can keep three states 
* 0 : dont know if `(idx, sum)` is possible or not 
* 1 :  yes `(idx, sum)` is possible 
* 2 :  no `(idx, sum)` is not possible


In recursion we can check if `(idx, sum)` is not possible so we just return from there otherwise we explore
### Code
```
vector<vector<bool>> dp;  // dp of size (n+1) * (sum+1)
bool solve(int n, int sum, vector<int>& v){
	if(sum==0) return true;
	if(n<0) return false;
	
	// using cache step
	if(dp[n][sum]==false) 
		return false;
	
	if(v[n]<=sum){
		if(solve(n-1,sum-v[n],v))
			return true;
	}
	return dp[n][sum] = solve(n-1, sum, v);
}
```

### Tabulation + Space Optimization
We can do the same in iterative method as well that too using just DP array of size `O(sum)`.
Our DP array will store weather sum is possible or not.
Initialize dp array of size `sum+1` and  set `dp[0] = true` cause making zero is always possible.
In first loop `i: 0 to n` we take an element and see all the possible sums using that
* i = 0 : we take first element and see what sums are possible it wil be just 0 and `arr[0]`.
* i = 1 :  then we see all sums possible using elements `{arr[0], arr[1]}` as dp already stores sums possible using `arr[0]` so we build up on that.
* i=n-1 we complete this iteration
Now DP stores all for all the sums in range `[0 ... sum]` if they are possible or not.

### Code
```
int n = arr.size();
vector<bool> dp(sum+1, false);
dp[0] = true;
for(int i=0;i<n;i++){
	for(int j = sum;j>=0;j--){
		if(j - arr[i] >= 0){
			dp[j] = dp[j] | dp[j-arr[i]];
		}
	}
}
return dp[sum];
```

### Complexity
```
Time: O(N * Sum)     
Space: O(Sum)
```

## References
[GFG: Article](https://www.geeksforgeeks.org/dsa/subset-sum-problem-dp-25/)
[GFG: Problem](https://www.geeksforgeeks.org/problems/subset-sum-problem-1611555638/1)