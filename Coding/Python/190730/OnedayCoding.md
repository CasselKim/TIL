# [6 Kyu] Multiples of 3 or 5

![image](./Problem.png)


## Instructions

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 **below** the number passed in.

> Note: If the number is a multiple of **both**3 and 5, only count it *once*.

###### *Courtesy of ProjectEuler.net*



## Sample Test

```python
test.describe("Multiples of 3 and 5")

test.it("should handle basic cases")
test.assert_equals(solution(10), 23)
```



## My solution

```python
def solution(number):
    return sum([i for i in range(number) if i%3==0 or i%5==0])
```



## Test Results

Test Passed

Test Passed

Test Passed

You have passed all of the tests! :)

---------

Time: 765ms Passed: 5 Failed: 0



## Best Solution

```python
def solution(number):
    return sum(x for x in range(number) if x % 3 == 0 or x % 5 == 0)
```



## The things I got

