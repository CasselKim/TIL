# [[7 Kyu] Breaking chocolate problem](https://www.codewars.com/kata/534ea96ebb17181947000ada/train/python)

![image](./Problem.png)


## Instructions

### Task

Your task is to split the chocolate bar of given dimension `n` x `m` into small squares. Each square is of size 1x1 and unbreakable. Implement a function that will return minimum number of breaks needed.

For example if you are given a chocolate bar of size `2` x `1` you can split it to single squares in just one break, but for size `3` x `1` you must do two breaks.

If input data is invalid you should return 0 (as in no breaks are needed if we do not have any chocolate to split). Input will always be a non-negative integer.



## Sample Test

```python
test.assert_equals(breakChocolate(5, 5) , 24)
test.assert_equals(breakChocolate(1, 1) , 0)
```



## My solution

```python
def breakChocolate(n, m):
    return n*m-1 if (n|m) else 0
```



## Test Results

Test Passed

Test Passed

Test Passed

You have passed all of the tests! :)

---------

Time: 860ms Passed: 5 Failed: 0



## Best Solution

```python
def breakChocolate(n, m):
    return max(n*m-1,0)
```



## The things I got

