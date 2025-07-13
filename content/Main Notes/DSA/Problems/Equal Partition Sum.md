3rd Jul 2025 13:52

Status: 
Tags: [[DP]]  [[DSA]]

# Problem
Given an array `arr` tell if it is possible to divide the array into two arrays which will have equal sum
##### Example 
`arr` = `[2,3,4,5]` 
True:  we can divide array as `[2,5]` & `[3,4]` they both have equal sum = 7

`arr` = `[1,2,3,3]` 
False:  theres no way to divide array in two arrays which have equal sum

### Solution
We use the same algorithm we used in [[Subset Sum Problem]] with some additional base checks.
* Sum up the whole array and store in `sum`.
* If sum of array is odd then there is no possible way to divide the array into two equal sum parts
* Then we apply [[Subset Sum Problem]] logic on given array and try to find a subset on `arr` that has a sum = `sum/2`;
* If we find any subset then solution exists other wise it does not exists.

### Code
```
bool canPartition(vector<int>& nums) {
	int sum = accumulate(nums.begin(), nums.end(), 0);
	// Check is total sum is odd
	if(sum%2) return false;
	
	int n = nums.size();
	int target = sum/2;
	
	// From down here its same Subset Sum code
	vector<bool> dp(1e4+1, false);
	dp[0] = true;
	for(int i=0;i<n;i++){
		int &val = nums[i];
		for(int j=target;j>=val;j--){
			dp[j] = dp[j] | dp[j-val];
		}
	}
	return dp[target];
}
```


## References
[LC: Problem](https://leetcode.com/problems/partition-equal-subset-sum/)
[[Subset Sum Problem]]