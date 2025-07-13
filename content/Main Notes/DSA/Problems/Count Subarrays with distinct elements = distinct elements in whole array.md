8th Jun 2025 14:59

Status:
Tags:  [[Sliding Window]] 

# Question
##### Count Complete Subarrays in an Array
You are given an array `nums` consisting of positive integers.
We call a subarray of an array complete if the following condition is satisfied:
	Definition: *The number of distinct elements in the subarray is equal to the number of distinct elements in the whole array.*
Return the number of complete subarrays.
A subarray is a contiguous non-empty part of an array.


### Approach
* **Intuition:** Find a subarray that satisfies being a "Complete Subarray" now you can expand both sides to count the different complete subarrays.
* **Issue:** But if u move both sides then lets say u found another subarray that is complete for that too you will expand your subarray left and right side and you will end up counting subarrays from previous complete subarray you found.
* **Solution:** You just expand towards the Right and then slide your complete subarray window towards right.

### Solution
* First make a Hashmap and count the number of distinct elements in the whole array.
* Start a sliding window `(l, r)` on the array. Move right adding elements in another Hashmap till you reach the point where you have a "Complete array".
* Count the Subarrays by expanding towards the right: O(1) using indices 
		    nums = \[1,1,2,3,2,2,2].  => here the window \[1,1,2,3] is complete so now,
		      we can count 4 subarrays  by expanding towards right=> `count+= n-r;`
* Then move the left side until the array becomes incomplete Then continue from step 2 again.




## References

[Yt Video](https://www.youtube.com/watch?v=V9Xgwx_8FcU)