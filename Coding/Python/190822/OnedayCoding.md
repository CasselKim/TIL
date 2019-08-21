# [[4 Kyu] Next bigger number with the same digits](https://www.codewars.com/kata/55983863da40caa2c900004e/train/python)

![image](./Problem.png)


## Instructions

You have to create a function that takes a positive integer number and returns the next bigger number formed by the same digits:

```python
12 ==> 21
513 ==> 531
2017 ==> 2071
```

If no bigger number can be composed using those digits, return `-1`:

```python
9 ==> -1
111 ==> -1
531 ==> -1
```



## Sample Test

```python
Test.assert_equals(next_bigger(12),21)
Test.assert_equals(next_bigger(513),531)
Test.assert_equals(next_bigger(2017),2071)
Test.assert_equals(next_bigger(414),441)
Test.assert_equals(next_bigger(144),414)
Test.assert_equals(next_bigger(4569876),4576689)
Test.assert_equals(next_bigger(8986543),9345689)
Test.assert_equals(next_bigger(18986543),19345688)
Test.assert_equals(next_bigger(19986543),31456899)
```



## My solution

```python
def next_bigger(n):
    re = str(n)[::-1]
    if ''.join(sorted(str(re),reverse=True))==str(n) : return -1
    
    for i,x in enumerate(re) :
        part = re[:i+1]
        if max(part) != x : break

    remain = re[i+1:][::-1]
    next_int = str(min([int(k)-int(x) for k in part if int(k)>int(x)])+int(x))
    remain += next_int
    part_list = sorted([m for m in part])
    part_list.remove(next_int)
    remain += ''.join(part_list)
    
    return int(remain)
```



## Test Results

Test Passed

Test Passed

Test Passed

You have passed all of the tests! :)

---------

Time: 796ms Passed: 150 Failed: 0



## Best Solution

```python
def next_bigger(n):

    ordered = lambda x: ''.join(sorted(str(x), reverse=True))
    digits = ordered(n)
    
    try:
        return next(x for x in xrange(n + 1, int(digits) + 1) if ordered(x) == digits)
    except StopIteration:
        return -1
```



## The things I got

**iterator** : The thing I know as 'generator', such as filter, reduce.

```python
>>> it = iter([1,2,3])
>>> next(it)
1
>>> next(it)
2
>>> next(it)
3
```

I can use like  `next( [x for x in n if ~] )`  so I don't have to use  `for~ : if~ : break`