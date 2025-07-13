3rd Jul 2025 22:09

Status: [[DP]]  [[DSA]]
Tags: 

# Problem
You are given an integer array `nums` and an integer `target`.
You want to build an **expression** out of nums by adding one of the symbols `'+'` and `'-'` before each integer in nums and then concatenate all the integers.
- For example, if `nums = [2, 1]`, you can add a `'+'` before `2` and a `'-'` before `1` and concatenate them to build the expression `"+2-1"`.

Return the number of different **expressions** that you can build, which evaluates to `target`.

### Naive Solution 
We find all possible sums that can be made from `[-sum to +sum]`  where sum is the total sum of the array. 
### Code
```
int n = nums.size();
int sum = accumulate(nums.begin(), nums.end(), 0);

// If target is impossible
if(target>sum or target<-sum) 
    return 0;

vector<int> dp(2*sum+1), prev(2*sum+1);

// Initialization
prev[sum] = 1;

for(int i=1;i<=n;i++){
    for(int j=sum;j>=-sum;j--){
        int idx = j+sum, curWays=0;
        if(idx+nums[i-1] <= 2*sum)
            curWays += prev[idx+nums[i-1]];
        if(idx-nums[i-1] >= 0)
            curWays += prev[idx-nums[i-1]];
        dp[idx] = curWays;
    }
    prev = dp;
}
return dp[target+sum];
```


### Smart Solution
Lets take an example
`arr = [1,1,1,1,1], target = 3`
we can make one expression as  `1 + 1 + 1 + 1 -1 = 3(target)` Now there are some +ve and some -ve elements partition them into two subset S1 and S2, we rewrite equation as:
```
target = S1 - S2 
```
and this is nothing but [[Count Subsets with given difference]] we are given the difference that is `target` and we have to find number of different partitions whose difference will be `target`

### Code
```
// Tabulation Solution
int n = nums.size();
int sum = accumulate(nums.begin(), nums.end(), 0);

// If target is impossible
if(target>sum or target<-sum) 
    return 0;
target = abs(target);
vector<int> dp(sum+1,0);

// Initialization
dp[0] = 1;

for(int i=0;i<n;i++){
    for(int j=sum;j>=0;j--){
        if(j>=nums[i]){
            dp[j]+=dp[j-nums[i]];
        }
    }
}
// We broke our problem into "Count subset with given difference"
if((sum+target)%2) return 0;
return dp[(target+sum)/2];
```

## References
[LC: Problem](https://leetcode.com/problems/target-sum/)