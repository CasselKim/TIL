# [6 Kyu] Easy Diagonal

![image](./Problem.png)


## Instructions

 In the drawing below we have a part of the Pascal's triangle, lines are numbered from **zero** (top). The left diagonal in pale blue with only numbers equal to 1 is diagonal **zero**, then in dark green (1, 2, 3, 4, 5, 6, 7) is diagonal 1, then in pale green (1, 3, 6, 10, 15, 21) is diagonal 2 and so on.

We want to calculate the sum of the binomial coefficients on a given diagonal. The sum on diagonal 0 is 8 (we'll write it S(7, 0), 7 is the number of the line where we start, 0 is the number of the diagonal). In the same way S(7, 1) is 28, S(7, 2) is 56.

Can you write a program which calculate S(n, p) where n is the line where we start and p is the number of the diagonal?

The function will take n and p (with: `n >= p >= 0`) as parameters and will return the sum.

### Examples

```python
diagonal(20, 3) => 5985
diagonal(20, 4) => 20349
```

### Hint

 When following a diagonal from top to bottom have a look at the numbers on the diagonal at its right.

### Ref

http://mathworld.wolfram.com/BinomialCoefficient.html  



![alternative text](http://i.imgur.com/eUGaNvIm.jpg)

## Sample Test

```python
test.assert_equals(diagonal(20, 4),20349)
test.assert_equals(diagonal(20, 5), 54264)
test.assert_equals(diagonal(20, 15), 20349)
```



## My solution

```python
from math import factorial as fac
from functools import reduce

def combine(n,p) :
    return reduce(lambda a,b : a*b,[x for x in range(n,n-p,-1)]) // fac(p)

def diagonal(n,p) :
    return combine(n,p+1)+combine(n,p) if p else n+1
```



## Test Results

Test Passed

Test Passed

Test Passed

You have passed all of the tests! :)

---------

Time: 2459ms Passed: 30 Failed: 0



## Best Solution

```python
from scipy.misc import comb
def diagonal(n, p):
    return comb(n+1, p+1, exact=True)
```



## The things I got

