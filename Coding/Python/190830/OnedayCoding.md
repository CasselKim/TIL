# [[6 Kyu] Who likes it?](https://www.codewars.com/kata/5266876b8f4bf2da9b000362/train/python)

![image](./Problem.png)


## Instructions

You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or other items. We want to create the text that should be displayed next to such an item.

Implement a function `likes :: [String] -> String`, which must take in input array, containing the names of people who like an item. It must return the display text as shown in the examples:

```haskell
likes [] // must be "no one likes this"
likes ["Peter"] // must be "Peter likes this"
likes ["Jacob", "Alex"] // must be "Jacob and Alex like this"
likes ["Max", "John", "Mark"] // must be "Max, John and Mark like this"
likes ["Alex", "Jacob", "Mark", "Max"] // must be "Alex, Jacob and 2 others like this"
```

For 4 or more names, the number in `and 2 others` simply increases.



## Sample Test

```python
Test.assert_equals(likes([]), 'no one likes this')
Test.assert_equals(likes(['Peter']), 'Peter likes this')
Test.assert_equals(likes(['Jacob', 'Alex']), 'Jacob and Alex like this')
Test.assert_equals(likes(['Max', 'John', 'Mark']), 'Max, John and Mark like this')
Test.assert_equals(likes(['Alex', 'Jacob', 'Mark', 'Max']), 'Alex, Jacob and 2 others like this')
```



## My solution

```python
def likes(names):
    if len(names) == 0 : return "no one likes this"
    elif len(names) == 1 : return "{} likes this".format(names[0])
    elif len(names) == 2 : return "{} and {} like this".format(names[0],names[1])
    elif len(names) == 3 : return "{}, {} and {} like this".format(names[0],names[1],names[2])
    else : return "{}, {} and {} others like this".format(names[0],names[1],len(names)-2)
```



## Test Results

Test Passed

Test Passed

Test Passed

You have passed all of the tests! :)

---------

Time: 863ms Passed: 45 Failed: 0



## Best Solution

```python
def likes(names):
    formats = {
            0: "no one likes this",
            1: "{} likes this",
            2: "{} and {} like this",
            3: "{}, {} and {} like this",
            4: "{}, {} and {others} others like this"
        }
    n = len(names)
    return formats[min(n,4)].format(*names, others=n-2)
```



## The things I got

