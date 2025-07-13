8th Jul 2025 22:32

Status: 
Tags: [[Array]]  [[Greedy]]. [[DSA]]

# Problem
Given an integer array of size `n`, find all elements that appear more than `⌊ n/3 ⌋` times.

**Example 1:**
**Input:** nums = `[3,2,3]`
**Output:** `[3]`

**Example 2:**
**Input:** nums = `[1]`
**Output:** `[1]`

## Approach
Observation:  To be majority the element should occur more than n/3 times that means there can be "**AT MOST 2**" majority elements
We apply modified Moores Voting Algorithm instead of just one track 2 majority elements at once. 
* Two variables `x, y` to track majority elements `cnt1, cnt2` to keep track of frequency 
* Traverse array if `cnt1=0` and cur element is not `y` then set x as cur element and `cnt1 = 1`
* Same for setting `y` if its not `cnt2=0` and cur element not x set cur as y and `cnt2 = 0`
* If cur = x or y increment respective count 
* If none of above conditions match set decrement both counts
* Finally we have probable majority elements verify by traversing againg and see their counts

### Code
```
int lim = nums.size()/3;
int x=-1, y=-1;
int cnt1 = 0, cnt2=0;
for(auto it: nums){
    if(cnt1==0 and it!=y) x = it, cnt1=1;
    else if(cnt2==0 and it!=x) y = it, cnt2=1;
    else if(it==x) cnt1++;
    else if(it==y) cnt2++;
    else cnt1--, cnt2--;
}
cnt1=cnt2=0;
for(auto it: nums){
    if(it==x) cnt1++;
    else if(it==y) cnt2++;
}
vector<int> ans;
if(cnt1>lim) ans.push_back(x);
if(cnt2>lim) ans.push_back(y);
return ans;
```


## References
[LC: Problem](https://leetcode.com/problems/majority-element-ii/description/)