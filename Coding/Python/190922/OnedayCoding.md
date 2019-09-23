# [[6 Kyu] Tank Truck](https://www.codewars.com/kata/55f3da49e83ca1ddae0000ad/train/python)

![image](./Problem.png)


## Instructions

To introduce the problem think to my neighbor who drives a tanker truck. The level indicator is down and he is worried because he does not know if he will be able to make deliveries. We put the truck on a horizontal ground and measured the height of the liquid in the tank.

Fortunately the tank is a perfect cylinder and the vertical walls on each end are flat. The height of the remaining liquid is `h`, the diameter of the cylinder is `d`, the total volume is `vt` (h, d, vt are positive or null integers). You can assume that `h` <= `d`.

Could you calculate the remaining volume of the liquid? Your function `tankvol(h, d, vt)` returns an integer which is the truncated result (e.g floor) of your float calculation.

Examples:

```python
tankvol(40,120,3500) should return 1021 (calculation gives about: 1021.26992027)

tankvol(60,120,3500) should return 1750

tankvol(80,120,3500) should return 2478 (calculation gives about: 2478.73007973)
```

Tank vertical section:

![alternative text](http://i.imgur.com/wmt0U43.png)



## Sample Test

```python
Test.assert_equals(tankvol(5, 7, 3848), 2940)
Test.assert_equals(tankvol(2, 7, 3848), 907)
```



## My solution

```python
from math import *

def tankvol(h, d, vt):
    r = d/2
    theta = acos((r-h)/r)
    
    part = r**2*theta - r*sin(theta)*(r-h)
    partion = part / (pi*r**2)
    
    return (int)(vt*partion)
```



## Test Results

Test Passed

Test Passed

Test Passed

You have passed all of the tests! :)

---------

Time: 839ms Passed: 118 Failed: 0



## Best Solution

```python
import math
def tankvol(h, d, vt):
    r=d/2
    theta=math.acos((r-h)/r)
    return int(vt*(theta-math.sin(theta)*(r-h)/r)/math.pi)
```



## The things I got

