# [[5 Kyu] Weight for weight](https://www.codewars.com/kata/55c6126177c9441a570000cc/train/python)

![image](./Problem.png)


## Instructions

My friend John and I are members of the "Fat to Fit Club (FFC)". John is worried because each month a list with the weights of members is published and each month he is the last on the list which means he is the heaviest.

I am the one who establishes the list so I told him: "Don't worry any more, I will modify the order of the list". It was decided to attribute a "weight" to numbers. The weight of a number will be from now on the sum of its digits.

For example `99` will have "weight" `18`, `100` will have "weight" `1` so in the list `100` will come before `99`. Given a string with the weights of FFC members in normal order can you give this string ordered by "weights" of these numbers?

### Example

```
"56 65 74 100 99 68 86 180 90"` ordered by numbers weights becomes: `"100 180 90 56 65 74 68 86 99"
```

When two numbers have the same "weight", let us class them as if they were strings and not numbers:`100` is before `180` because its "weight" (1) is less than the one of `180` (9) and `180` is before `90`since, having the same "weight" (9), it comes before as a *string*.

All numbers in the list are positive numbers and the list can be empty.

### Notes

- it may happen that the input string have leading, trailing whitespaces and more than a unique whitespace between two consecutive numbers
- Don't modify the input
- For C: The result is freed.



## Sample Test

```python
Test.it("Basic tests")
Test.assert_equals(order_weight("103 123 4444 99 2000"), "2000 103 123 4444 99")
Test.assert_equals(order_weight("2000 10003 1234000 44444444 9999 11 11 22 123"), "11 11 2000 10003 22 123 1234000 44444444 9999")
```



## My solution

```python
def fake_weight(s) :
    return sum([int(x) for x in s])+int(s)*10**(-len(s))+len(s)*(10**-10) if s else 0

def order_weight(string):
    return ' '.join(sorted(string.split(' '),key=fake_weight))
```



## Test Results

Test Passed

Test Passed

Test Passed

You have passed all of the tests! :)

---------

Time: 871ms Passed: 57 Failed: 0



## Best Solution

```python
def order_weight(_str):
    return ' '.join(sorted(sorted(_str.split(' ')), key=lambda x: sum(int(c) for c in x)))
```



## The things I got

**sorted method** sorts the iterable based on the iterable itself.

```python
>>> sorted([False,False,1,2,0,True])
[False, False, 0, 1, True, 2]
# sorted by Original iterable (False came first, then False came first)
>>> sorted([0,False,True,2,False,1])
[0, False, False, True, 1, 2]
# sorted by original iterable (0 came first, then 0 came first)
```
