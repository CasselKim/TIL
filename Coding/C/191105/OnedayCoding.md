# [[7 Kyu] Find the longest gap!]( https://www.codewars.com/kata/55b86beb1417eab500000051/train/c )

![image](./Problem.png)


## Instructions

 A binary gap within a positive number `num` is any sequence of consecutive zeros that is surrounded by ones at both ends in the binary representation of `num`.
For example:
`9` has binary representation `1001` and contains a binary gap of length `2`.
`529` has binary representation `1000010001` and contains two binary gaps: one of length `4` and one of length `3`.
`20` has binary representation `10100` and contains one binary gap of length `1`.
`15` has binary representation `1111` and has `0` binary gaps.
Write `function gap(num)` that, given a positive `num`, returns the length of its longest binary gap.
The function should return `0` if `num` doesn't contain a binary gap. 



## Sample Test

```c
#include <criterion/criterion.h>

unsigned int gap(unsigned int num);

Test(static_tests, should_pass_all_tests_provided) {
    cr_assert_eq(gap(9), 2, "Expected: 2, Actual: %d\n", gap(9));
    cr_assert_eq(gap(529), 4, "Expected: 4, Acutal: %d\n", gap(529));
    cr_assert_eq(gap(20), 1, "Expected: 1, Actual: %d\n", gap(20));
    cr_assert_eq(gap(15), 0, "Expected: 0, Actual: %d\n", gap(15));
}
```



## My solution

```c

```



## Test Results

Test Passed

Test Passed

Test Passed

You have passed all of the tests! :)



Time: 844ms Passed: 133 Failed: 0



## Best Solution

```c
char *numeric_formatter(char *template, char *input)
{
    char *dflt = "1234567890";
    if (!*input) input = dflt;
    else dflt = input;
    char *res = strdup(template);
    char *str = res;
    while (*str)
    {
        if (*str >= 'a' && *str <= 'z' || *str >= 'A' && *str <= 'Z' && *input)
            *str = *input++;
        ++str;
        if (!*input) input = dflt;
    }
    return res;
}
```



## The things I got

