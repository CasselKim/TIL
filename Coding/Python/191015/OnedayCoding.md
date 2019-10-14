# [[7 Kyu] Basic Math (Add or Subtract)](https://www.codewars.com/kata/5809b62808ad92e31b000031/train/python)

![image](./Problem.png)

In this kata, you will do addition and subtraction on a given string. The return value must be also a string.

**Note** the input will not be empty.

### Examples

```python
"1plus2plus3plus4"  --> "10"
"1plus2plus3minus4" -->  "2"
```



## Sample Test

```python
Test.assert_equals(calculate('1plus2plus3plus4'), '10')
Test.assert_equals(calculate('1minus2minus3minus4'), '-8')
Test.assert_equals(calculate('1plus2plus3minus4'), '2')
```



## My solution

```python
def calculate(s):
    return str(eval(s.replace("plus","+").replace("minus","-")))
```



## Test Results

Test Passed

Test Passed

Test Passed

You have passed all of the tests! :)

---------

Time: 798ms Passed: 55 Failed: 0



## Best Solution

```python
same
```



## The things I got

