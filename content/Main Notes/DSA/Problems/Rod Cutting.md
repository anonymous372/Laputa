4th Jul 2025 14:02

Status: 
Tags: [[DP]]  [[DSA]]

# Problem
Given a rod of length **n** inches and an array `price[]`, where `price[i]` denotes the value of a piece of length **i**. Your task is to determine the **maximum** value obtainable by:
**"cutting up** the rod and selling the **pieces"**.

Eg: `price[] = [1, 5, 8, 9, 10, 17, 17, 20]`
Ans => 22 you cut the whole rod into only two pieces of lenghts 6 and 2.

### Code
```
int n = price.size();
vector<int> dp(n+1,0);
dp[0] = 0;
for(int i=0;i<=n;i++){
	dp[i] = price[i-1];
	int x=0, y=i;
	while(x<=y){
		dp[i] = max(dp[i], dp[x]+dp[y]);
		x++, y--;
	}
}
return dp[n];
```

## References
[GFG: Problem](https://www.geeksforgeeks.org/problems/rod-cutting0840/1)