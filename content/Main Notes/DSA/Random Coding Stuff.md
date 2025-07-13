14th Jun 2025 13:51

Status: 
Tags: [[DSA]]

### Finding maximum of more than two elements at once
```
1. Using integers or other comparables
int mx = max({a,b,c,d});   // {a,b,c,d} is initializer list

2. Using a vector<int>
auto mxItr = max_element(vec.begin(), vec.end()); // vec is a vector<int>
```

### Memset
Used to initialize array values with some default value
```
int arr[5];
memset(arr, -1, sizeof(arr)); // sets all values to -1
```

### Traversing map more elegantly
```
for(auto [key, value]: mp){  // yes you can destructure like this in c++
	cout<<key<<": "<<value;
}
```

#### Sorting in reverse
```
sort(v.rbegin(), v.rend());  // sorts in decreasing order
// v.rbegin() points to last element of vector
// v.rend() points to the element before first element 
```

## References
