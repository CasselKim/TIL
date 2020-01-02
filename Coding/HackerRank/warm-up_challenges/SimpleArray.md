# [Simple Array Sum](https://www.hackerrank.com/challenges/simple-array-sum/problem)

Given an array of integers, find the sum of its elements.

For example, if the array `ar=[1,2,3], 1+2+3=6`, so return `6`.

**Function Description**

Complete the *simpleArraySum* function in the editor below. It must return the sum of the array elements as an integer.

simpleArraySum has the following parameter(s):

- *ar*: an array of integers

**Input Format**

The first line contains an integer, `n`, denoting the size of the array.
The second line contains `n` space-separated integers representing the array's elements.

**Constraints**
$$
0<n,ar[i] \leq1000
$$
**Output Format**

Print the sum of the array's elements as a single integer.

**Sample Input**

```
6
1 2 3 4 10 11
```

**Sample Output**

```
31
```

**Explanation**

We print the sum of the array's elements: `1+2+3+4+10+11=31`

　  

### My Answer

```python
from functools import reduce

def simpleArraySum(ar):
    return reduce(lambda a,b:a+b,ar)
```

* Time Complexity : O(n)
* Space Complexity : O(1)

　  

### Best Answer

```python
def simpleArraySum(ar):
    return sum(ar)
```

* Time Complexity : O(n)
* Space Complexity : O(1)

　  

### The things I got

