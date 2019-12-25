# [[7 Kyu] Maximum Multiple](https://www.codewars.com/kata/5aba780a6a176b029800041c/train/python)

![image](./Problem.png)


## Instructions

### Task

**Given** a **Divisor and a Bound** , *Find the largest integer N* , Such That ,

### Conditions

- **N** is *divisible by divisor*
- **N** is *less than or equal to bound*
- **N** is *greater than 0*.

### Notes

- The **parameters (divisor, bound)** passed to the function are *only positve values* .
- *It's guaranteed that* a **divisor is Found** .

### Examples

```python
maxMultiple (2,7) ==> return (6)
```

**(6)** is divisible by **(2)** , **(6)** is less than or equal to bound **(7)** , and **(6)** is > 0 .



```python
maxMultiple (10,50)  ==> return (50)
```

**(50)** *is divisible by* **(10)** , **(50)** is less than or equal to bound **(50)** , and **(50)** is > 0 .



```python
maxMultiple (37,200) ==> return (185)
```

**(185)** is divisible by **(37)** , **(185)** is less than or equal to bound **(200)** , and **(185)** is > 0 .



## Sample Test

```python
Test.describe("Basic tests")
Test.assert_equals(max_multiple(2,7),6)
Test.assert_equals(max_multiple(3,10),9)
Test.assert_equals(max_multiple(7,17),14)
Test.assert_equals(max_multiple(10,50),50)
Test.assert_equals(max_multiple(37,200),185)
Test.assert_equals(max_multiple(7,100),98)
print("<COMPLETEDIN::>")
```



## My solution

```python
def max_multiple(divisor, bound):
    return max([x for x in range(1,bound+1) if x%divisor==0])
```



## Test Results

Test Passed

Test Passed

Test Passed

You have passed all of the tests! :)

---------

Time: 3335ms Passed: 46 Failed: 0



## Best Solution

```python
def max_multiple(divisor, bound):
    return bound - (bound % divisor)
```



## The things I got

