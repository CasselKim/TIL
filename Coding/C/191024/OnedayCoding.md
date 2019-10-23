# [[6 Kyu] Mexican Wave](https://www.codewars.com/kata/58f5c63f1e26ecda7e000029/train/c)

![image](./Problem.png)


## Instructions

The wave (known as the Mexican wave in the English-speaking world outside North America) is an example of metachronal rhythm achieved in a packed stadium when successive groups of spectators briefly stand, yell, and raise their arms. Immediately upon stretching to full height, the spectator returns to the usual seated position.The result is a wave of standing spectators that travels through the crowd, even though individual spectators never move away from their seats. In many large arenas the crowd is seated in a contiguous circuit all the way around the sport field, and so the wave is able to travel continuously around the arena; in discontiguous seating arrangements, the wave can instead reflect back and forth through the crowd. When the gap in seating is narrow, the wave can sometimes pass through it. Usually only one wave crest will be present at any given time in an arena, although simultaneous, counter-rotating waves have been produced. (Source [Wikipedia](https://en.wikipedia.org/wiki/Wave_(audience)))

![img](https://raw.githubusercontent.com/adrianeyre/codewars/master/Ruby/Authored/Wave.png)

### Task

In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up.

### Rules

1.  The input string will always be lower case but maybe empty.
2.  If the character in the string is whitespace then pass over it as if it was an empty seat.

### Example

wave("hello") => []string{"Hello", "hEllo", "heLlo", "helLo", "hellO"}



Good luck and enjoy!



## Sample Test

```c
#include <criterion/criterion.h>

void wave(const char *y, char **target);

Test(wave, BasicTest) 
{
  const char *tests[] = {"hello", "codewars", "two words", " gap "};
  const char rs[4][8][10] = {
                        {"Hello","hEllo", "heLlo","helLo", "hellO"},
                        {"Codewars", "cOdewars", "coDewars", "codEwars", 
                         "codeWars", "codewArs", "codewaRs", "codewarS"},
                        {"Two words", "tWo words", "twO words", "two Words", 
                         "two wOrds", "two woRds", "two worDs", "two wordS"},
                        {" Gap ", " gAp ", " gaP "}};
  for (int i = 0; i < 4; i++)
  {
    int r = 0;
    for (int m = 0; tests[i][m] != '\0'; m++) 
    {
      if (tests[i][m] != ' ') r ++;
    }
    char *target[r]; 
    for (int i = 0; i < r; i++) 
    {
      target[i] = (char *)calloc((r + 1) , sizeof(char));
    }
    wave(tests[i], target);
    for (int j = 0; j < r; j++)
    {
      cr_assert_eq(strncmp(rs[i][j], target[j], r), 0);
      free(target[j]);
    }
  }
}
```



## My solution

```c
#include <string.h>

void wave(char *y, char **target)
{
  int count=0;
  for(int i = 0; i < strlen(y) ; i++){
          char *p = (char*)malloc(sizeof(y));
          strcpy(p,y);
          if(p[i]==' ') {count++; continue;}
          p[i] = toupper(p[i]);
          strcpy(target[i-count],p);
          free(p);
      }
}
```



## Test Results

Test Passed

Test Passed

Test Passed

You have passed all of the tests! :)

---------

Time: 988ms Passed: 634 Failed: 0



## Best Solution

```c
void wave(char *y, char **target)
{
  for (char i = 0, *p = y; *p; ++p) {
    if (*p != ' ') {
      strcpy(target[i], y);
      target[i++][p-y] = toupper(*p);
    }
  }
}
```



## The things I got

