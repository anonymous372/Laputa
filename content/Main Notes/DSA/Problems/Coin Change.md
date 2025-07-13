4th Jul 2025 16:24

Status: 
Tags: [[DP]]  [[DSA]]

# Problem
Given an integer array **coins[ ]** representing different denominations of currency and an integer **sum**, find the number of ways you can make **sum** by using different combinations from coins[ ].   
**Note:** Assume that you have an **infinite** supply of each type of coin. Therefore, you can use any coin as many times as you want.
Eg: `coins[] = [1, 2, 3], sum = 4`
Ans => 4  :: `[1,1,1,1], [2,2], [1,1,2], [1,3]`

### Code
```
int n = coins.size();
vector<int> dp(sum+1,0);
dp[0] = 1;
for(int i=1;i<=n;i++){
	int curCoin = coins[i-1];
	for(int j=0;j<=sum;j++){
		if(j>=curCoin)
			dp[j] += dp[j-curCoin];
	}
}
return dp[sum];
```

## References
[GFG:Problem](https://www.geeksforgeeks.org/problems/coin-change2448/1)