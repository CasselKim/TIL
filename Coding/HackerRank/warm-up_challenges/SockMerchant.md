# [Warm-up Challenges - Sock Merchant](https://www.hackerrank.com/challenges/sock-merchant/problem?h_l=interview&playlist_slugs[]=interview-preparation-kit&playlist_slugs[]=warmup)

John works at a clothing store. He has a large pile of socks that he must pair by color for sale. Given an 

array of integers representing the color of each sock, determine how many pairs of socks with matching colors there are.

For example, there are socks with colors . There is one pair of color and one of color . There are three odd socks left, one of each color. The number of pairs is .

**Function Description**

Complete the *sockMerchant* function in the editor below. It must return an integer representing the number of matching pairs of socks that are available.

sockMerchant has the following parameter(s):

- *n*: the number of socks in the pile
- *ar*: the colors of each sock

**Input Format**

The first line contains an integer , the number of socks represented in .
The second line contains space-separated integers describing the colors of the socks in the pile.

**Constraints**

- $$
  1\leq n\leq100
  $$

  $$
  1\leq ar[i] \leq100\ \ where \ 0\leq i\leq n
  $$

**Output Format**

Return the total number of *matching pairs* of socks that John can sell.

**Sample Input**

```
9
10 20 20 10 10 30 50 10 20
```

**Sample Output**

```
3
```

**Explanation**

![sock.png](https://s3.amazonaws.com/hr-challenge-images/25168/1474122392-c7b9097430-sock.png)

John can match three pairs of socks.



### My Answer

```python
def sockMerchant(n, ar):
    color = {}
    count = 0
    for x in ar :
        if x not in color : color[x] = True
        else :
            if color[x] : 
                color[x]=False
                count+=1
            else :
                color[x]=True
    return count

```

* Time Complexity : O(n)
* Space Complexity : O(n)

　  

### Best Answer

```c++
Set<Integer> colors = new HashSet<>();
int pairs = 0;

for (int i = 0; i < n; i++) {
    if (!colors.contains(c[i])) {
        colors.add(c[i]);
    } else {
        pairs++;
        colors.remove(c[i]);
    }
}

System.out.println(pairs);
```

* Time Complexity : O(n)
* Space Complexity : O(n)

　  

### The things I got

