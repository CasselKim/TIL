# [[7 Kyu] You're a square!](https://www.codewars.com/kata/54c27a33fb7da0db0100040e/train/c)

![image](./Problem.png)


## Instructions

### A square of squares

You like building blocks. You especially like building blocks that are squares. And what you even like more, is to arrange them into a square of square building blocks!

However, sometimes, you can't arrange them into a square. Instead, you end up with an ordinary rectangle! Those blasted things! If you just had a way to know, whether you're currently working in vain… Wait! That's it! You just have to check if your number of building blocks is a *perfect square*.

### Task

Given an integral number, determine if it's a [square number](https://en.wikipedia.org/wiki/Square_number):

> In mathematics, a **square number** or **perfect square** is an integer that is the square of an integer; in other words, it is the product of some integer with itself.

The tests will *always* use some integral number, so don't worry about that in dynamic typed languages.

### Examples

```c
is_square(-1) // returns false
is_square(0)  // returns true
is_square(3)  // returns false
is_square(4)  // returns true
is_square(25) // returns true  
is_square(26) // returns false
```



## Sample Test

```c
#include <criterion/criterion.h>
#include <stdbool.h>

bool is_square(int n);

Test(Sample_Tests, should_work_for_some_examples) {
    cr_assert_eq(is_square(-1), false, "-1: Negative numbers cannot be square numbers");
    cr_assert_eq(is_square( 0),  true,  "0 is a square number");
    cr_assert_eq(is_square( 3), false,  "3 is not a square number");
    cr_assert_eq(is_square( 4),  true,  "4 is a square number");
    cr_assert_eq(is_square(25),  true, "25 is a square number");
    cr_assert_eq(is_square(26), false, "26 is not a square number");
}
```



## My solution

```c
#include <stdbool.h>
#include <math.h>

bool is_square(int n) {

    return ((int)(sqrt(n))==sqrt(n)) ? true : false;

}
```



## Test Results

Test Passed

Test Passed

Test Passed

You have passed all of the tests! :)

---------

Time: 948ms Passed: 106 Failed: 0



## Best Solution

```c
same
```



## The things I got

