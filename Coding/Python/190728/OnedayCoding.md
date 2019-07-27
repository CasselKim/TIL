# [6 kyu] Rank Vector

![image](./Problem.png)


## Instructions

Given an array (or list) of scores, return the array of *ranks* for each value in the array. The largest value has rank 1, the second largest value has rank 2, and so on. Ties should be handled by assigning the same rank to all tied values. For example:

```
ranks([9,3,6,10]) = [2,4,3,1]
```

and

```
ranks([3,3,3,3,3,5,1]) = [2,2,2,2,2,1,7]
```

because there is one 1st place value, a five-way tie for 2nd place, and one in 7th place.



## Sample Test

```python
Test.assert_equals(ranks([]), [])
Test.assert_equals(ranks([2]), [1])
Test.assert_equals(ranks([2,2]), [1,1])
```



## My solution

```python
def findrank(lst) :
    rank = {}
    
    for i,x in enumerate(lst) :
        if x not in rank : rank[x] = i
    
    return rank

def copy_sort_reverse(lst) :
    l = lst[:]
    l.sort()
    l.reverse()
    return l

def ranks(a):
    lst = copy_sort_reverse(a)
    rank = findrank(lst)
    sub = a[:]
    
    for i,x in enumerate(sub) :
        sub[i] = rank[x]+1
        
    return sub
```



## Test Results

Test Passed

Test Passed

Test Passed

You have passed all of the tests! :)

---------

Time: 765ms Passed: 9 Failed: 0



## Best Solution

```python
def ranks(a):
  sortA = sorted(a, reverse=True)
  return [sortA.index(s) + 1 for s in a]
```



## The things I got

### sort vs sorted

**list.sort()** : return None, sort the list itself.

**sorted(iterable, cmp=None, key=None, reverse=None)** :  return Sorted list, No effect on original list.

```python
>>> student_tuples = [
   	('john', 'A', 15),
    ('jane', 'B', 12),
    ('dave', 'B', 10),
]

>>> sorted(student_tuples, key=lambda student: student[2])   # sort by age
[('dave', 'B', 10), ('jane', 'B', 12), ('john', 'A', 15)]


>>> student_tuples.sort()
>>> student_tuples
[('dave', 'B', 10), ('jane', 'B', 12), ('john', 'A', 15)] # sort by name
```



study with [docs.python - sort](https://docs.python.org/3/howto/sorting.html)

