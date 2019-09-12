# [[7 Kyu] Speed Control](https://www.codewars.com/kata/56484848ba95170a8000004d/train/c)

![image](./Problem.png)


## Instructions

In John's car the GPS records every `s` seconds the distance traveled from an origin (distances are measured in an arbitrary but consistent unit). For example, below is part of a record with `s = 15`:

```c
x = [0.0, 0.19, 0.5, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0, 2.25]
```

The sections are:

```c
0.0-0.19, 0.19-0.5, 0.5-0.75, 0.75-1.0, 1.0-1.25, 1.25-1.50, 1.5-1.75, 1.75-2.0, 2.0-2.25
```

We can calculate John's average hourly speed on every section and we get:

```c
[45.6, 74.4, 60.0, 60.0, 60.0, 60.0, 60.0, 60.0, 60.0]
```

Given `s` and `x` the task is to return as an integer the `floor` of the maximum average speed per hour obtained on the sections of `x`. If x length is less than or equal to 1 return `0` since the car didn't move.

### Example

with the above data your function `gps(s, x)`should return `74`

### Note

With floats it can happen that results depends on the operations order. To calculate hourly speed you can use:

`(3600 * delta_distance) / s`.



## Sample Test

```c
#include <stdio.h>
#include <stdlib.h>
#include <criterion/criterion.h>

char* array2StringDouble(double* array, int sz);
int gps(int s, double* x, int sz);

void dotest(int s, double* x, int sz, int exp)
{
    char *str = array2StringDouble(x, sz);
    int act = gps(s, x, sz);
    if(act != exp)
        printf("Error. Expected %d but got %d\n", exp, act);
    cr_assert_eq(act, exp, "");
    free(str); str = NULL;
}

Test(gps, ShouldPassAllTheTestsProvided) {

    double x[8] = {0.0, 0.23, 0.46, 0.69, 0.92, 1.15, 1.38, 1.61};
    dotest(20, x, 8, 41);

    double x1[14] = {0.0, 0.11, 0.22, 0.33, 0.44, 0.65, 1.08, 1.26, 1.68, 1.89, 2.1, 2.31, 2.52, 3.25};
    dotest(12, x1, 14, 219);

    double x2[17] = {0.0, 0.18, 0.36, 0.54, 0.72, 1.05, 1.26, 1.47, 1.92, 2.16, 2.4, 2.64, 2.88, 3.12, 3.36, 3.6, 3.84};
    dotest(20, x2, 17, 80);

    double x3[16] = {0.0, 0.01, 0.36, 0.6, 0.84, 1.05, 1.26, 1.47, 1.68, 1.89, 2.1, 2.31, 2.52, 2.73, 2.94, 3.15};
    dotest(14, x3, 16, 90);
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

---------

Time: 



## Best Solution

```python

```



## The things I got

