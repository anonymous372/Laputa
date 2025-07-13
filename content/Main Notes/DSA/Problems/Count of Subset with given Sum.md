3rd Jul 2025 15:16

Status: 
Tags: [[DP]]  [[DSA]]

# Problem
Given an array of integers `arr`, count all subsets of the array whose sum is equal to the given `target`.


### Solution
We use [[Subset Sum Problem]] concept just with a few changes.
We see whenever `dp[j-arr[i]]` = `true` this means that we know we can make `j-arr[i]` we let assume in `"m"` ways now we can simply add `arr[i]` value in all those different ways to make `"j"` in `"m"` ways. We use this logic 

### Code
```
int n = arr.size();
vector<int> dp(target+1, 0);
sort(arr.begin(), arr.end());
dp[0] = 1;
for(int i=0;i<n;i++){
	for(int j=target;j>=0;j--){
		if(j>=arr[i]){
			dp[j]+=dp[j-arr[i]];
		}
	}
}
return dp[target];
```



## References
[GFG: Problem](https://www.geeksforgeeks.org/problems/perfect-sum-problem5633/1)