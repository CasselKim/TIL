# [[6 Kyu] Take a Ten Minute Walk](https://www.codewars.com/kata/54da539698b8a2ad76000228/train/python)

![image](./Problem.png)


## Instructions

You live in the city of Cartesia where all roads are laid out in a perfect grid. You arrived ten minutes too early to an appointment, so you decided to take the opportunity to go for a short walk. The city provides its citizens with a Walk Generating App on their phones -- everytime you press the button it sends you an array of one-letter strings representing directions to walk (eg. ['n', 's', 'w', 'e']). You always walk only a single block in a direction and you know it takes you one minute to traverse one city block, so create a function that will return **true** if the walk the app gives you will take you exactly ten minutes (you don't want to be early or late!) and will, of course, return you to your starting point. Return **false** otherwise.

> **Note**: you will always receive a valid array containing a random assortment of direction letters ('n', 's', 'e', or 'w' only). It will never give you an empty array (that's not a walk, that's standing still!).



## Sample Test

```python
for i in range(2): # test as many times as you want, just change the number
    test1 = create_tests(random.randint(0,20))
    test.assert_equals(isValidWalk(test1[0]),test1[1])
```



## My solution

```python
def isValidWalk(walk):
    if walk.count('s') == walk.count('n') and walk.count('w') == walk.count('e'): 
        return True if len(walk)==10 else False
    else : return False
```



## Test Results

Test Passed

Test Passed

Test Passed

You have passed all of the tests! :)

---------

Time: 814ms Passed: 210 Failed: 0



## Best Solution

```python
def isValidWalk(walk):
    return len(walk) == 10 and walk.count('n') == walk.count('s') and walk.count('e') == walk.count('w')
```



## The things I got

short short short