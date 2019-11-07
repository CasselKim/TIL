# [[7 Kyu] Consecutive Ducks]( https://www.codewars.com/kata/55b86beb1417eab500000051/train/c )

![image](./Problem.png)


## Instructions

Positive integers have so many gorgeous features. Some of them could be expressed as a sum of two or more consecutive positive numbers.

### Consider an Example

- `10` , could be expressed as a sum of `1 + 2 + 3 + 4`.

### Task

**Given** *Positive integer*, N , **Return** true if it could be expressed as a sum of two or more consecutive positive numbers , OtherWise return false .

### Notes

- Guaranteed constraint : **2 ≤ N ≤ (2^32) -1** .

### Input >> Output Examples

```c
* consecutiveDucks(9)  ==>  return (true)  //  9 , could be expressed as a sum of ( 2 + 3 + 4 ) or ( 4 + 5 ) . 

* consecutiveDucks(64)  ==>  return (false)

* consecutiveDucks(42)  ==>  return (true) //  42 , could be expressed as a sum of ( 9 + 10 + 11 + 12 )  . 
```



## Sample Test

```c
#include <criterion/criterion.h>
#include <stdbool.h>

bool consecutive_ducks(unsigned int);

Test(tests, check_small_values) {
  cr_assert_eq(consecutive_ducks(69), true);
  cr_assert_eq(consecutive_ducks(8), false);
  cr_assert_eq(consecutive_ducks(57), true);
  cr_assert_eq(consecutive_ducks(6), true);
  cr_assert_eq(consecutive_ducks(13), true);
  cr_assert_eq(consecutive_ducks(16), false);
  cr_assert_eq(consecutive_ducks(91), true);
  cr_assert_eq(consecutive_ducks(75), true);
  cr_assert_eq(consecutive_ducks(38), true);
  cr_assert_eq(consecutive_ducks(25), true);
  cr_assert_eq(consecutive_ducks(32), false);
  cr_assert_eq(consecutive_ducks(65), true);
  cr_assert_eq(consecutive_ducks(13), true);
  cr_assert_eq(consecutive_ducks(16), false);
  cr_assert_eq(consecutive_ducks(99), true);
}
Test(tests, check_medium_values) {
  cr_assert_eq(consecutive_ducks(522), true);
  cr_assert_eq(consecutive_ducks(974), true);
  cr_assert_eq(consecutive_ducks(755), true);
  cr_assert_eq(consecutive_ducks(512), false);
  cr_assert_eq(consecutive_ducks(739), true);
  cr_assert_eq(consecutive_ducks(1006), true);
  cr_assert_eq(consecutive_ducks(838), true);
  cr_assert_eq(consecutive_ducks(1092), true);
  cr_assert_eq(consecutive_ducks(727), true);
  cr_assert_eq(consecutive_ducks(648), true);
  cr_assert_eq(consecutive_ducks(1024), false);
  cr_assert_eq(consecutive_ducks(851), true);
  cr_assert_eq(consecutive_ducks(541), true);
  cr_assert_eq(consecutive_ducks(1011), true);
  cr_assert_eq(consecutive_ducks(822), true);
}
Test(tests, check_large_values) {
  cr_assert_eq(consecutive_ducks(382131), true);
  cr_assert_eq(consecutive_ducks(118070), true);
  cr_assert_eq(consecutive_ducks(17209), true);
  cr_assert_eq(consecutive_ducks(32768), false);
  cr_assert_eq(consecutive_ducks(161997), true);
  cr_assert_eq(consecutive_ducks(400779), true);
  cr_assert_eq(consecutive_ducks(198331), true);
  cr_assert_eq(consecutive_ducks(325482), true);
  cr_assert_eq(consecutive_ducks(88441), true);
  cr_assert_eq(consecutive_ducks(648), true);
  cr_assert_eq(consecutive_ducks(65536), false);
  cr_assert_eq(consecutive_ducks(323744), true);
  cr_assert_eq(consecutive_ducks(183540), true);
  cr_assert_eq(consecutive_ducks(65271), true);
  cr_assert_eq(consecutive_ducks(5263987), true);
}
```



## My solution

```c
#include <stdbool.h>
#include <stdio.h>

bool consecutive_ducks(unsigned int n) {
  for(unsigned int seq=1,count=2;seq<=n;seq+=count++){
    if((n-seq)%count==0) return true;
  }
  return false;
}
```



## Test Results

Test Passed

Test Passed

Test Passed

You have passed all of the tests! :)

----------

Time: 1116ms Passed: 1045 Failed: 0 



## Best Solution

```c
#include <stdbool.h>

bool consecutive_ducks(unsigned int n) {
  return (n & (n - 1)) != 0;
}
```



## The things I got

