# [6 Kyu] Simple Simple Simple String Expansion

![image](./Problem.png)


## Instructions

Given a string that includes alphanumeric characters ('3a4B2d') return the expansion of that string: The numeric values represent the occurrence of each letter preceding that numeric value. There should be no numeric characters in the final string. Empty strings should return an empty string.

The first occurrence of a numeric value should be the number of times each character behind it is repeated, until the next numeric value appears.

```python
string_expansion('3D2a5d2f') == 'DDDaadddddff'
string_expansion('3abc') == 'aaabbbccc'       # correct
string_expansion('3abc') != 'aaabc'           # wrong
string_expansion('3abc') != 'abcabcabc'       # wrong
```

If there are two consecutive numeric characters the first one is ignored.

```python
string_expansion('3d332f2a') == 'dddffaa'
```

If there are two consecutive alphabetic characters then the first character has no effect on the one after it.

```python
string_expansion('abcde') == 'abcde'
```

Your code should be able to work for both lower and capital case letters.

```python
string_expansion('') == ''
```



## Sample Test

```python
test.describe('Sample Test Cases')
test.assert_equals(string_expansion('3abc'),'aaabbbccc')
test.assert_equals(string_expansion('3D2a5d2f'),'DDDaadddddff')
test.assert_equals(string_expansion('0d0a0v0t0y'),'')
test.assert_equals(string_expansion('3d332f2a'),'dddffaa')
test.assert_equals(string_expansion('abcde'),'abcde')
```



## My solution

```python
def string_expansion(s):
    num = 1
    result = ''
    for x in s :
        if ord(x) < 65 :
            num = int(x)
        else : result += x*num
    return result
```

get each single data of String and decide if it is number of char.

if it is number, save and continue

else, add x time num to result



## Test Results

Test Passed

Test Passed

Test Passed

You have passed all of the tests! :)

---------

Time: 925ms Passed: 1037 Failed: 0



## Best Solution

```python
def string_expansion(s):
    m,n = '',1
    for j in s:
        if j.isdigit():
            n = int(j)
        else:
            m += j*n
    return m
```



## The things I got

**String.isdigit()** : Determine if String consists of digit

```python
>>> "123".isdigit()
True
>>> "-123".isdigit()
False
>>> "1.23".isdigit()
False
```

It return False when String is negative or decimal