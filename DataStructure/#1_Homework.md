# [Data Structure HW #1]

### Introduction

Implement the following problems by C programming and upload only the source code files (such as xxx.c and xxx.h) as a zip file compressed to the homework board at abeek.knu.ac.kr. In order to prepare the mid exam, you had better implement the C programs for yourself without copying others’ programs. If your copying is detected, you will get a point taken off.  

다음을 C 프로그램으로 구현해서 소스(xxx.c 과 xxx.h 파일)만 zip으로 묶어서 abeek 숙제게시판에 올릴 것. 중간고사 준비를 위해서 모든 프로그램은 직접 짜보아야 하고, 카피한 것이 발각되면 감점 있습니다.  



### Contents

1. Implement the following ADT stack using **array** and **linked list**; you should **implement both of them**. You should **utilize them at the next problems**. 

1. 다음의 ADT를 만족하는 stack을 **array와 linked list 두 가지 버전**으로 구현하시오. 이 구현한 부분을 이후 문제에서는 활용할 것.

   ![image](https://user-images.githubusercontent.com/48755377/66322819-ae7a6d00-e95d-11e9-920c-ce6d05e354b0.png)  

   [#1 Homework - ADT Stack made of array.c ](StackADT.c)  

   [#1 Homework - ADT Stack made of array.h](Stack.h)  



2.  Reversing data. Print out the input data as its reversing order.



3.  Convert decimal to binary. If you get a positive integer as input, you should print out its binary number.  

 

4.  괄호를 포함하는 4칙 연산(+, -, *, /)이 가능한 Calculator. 다음을 포함해야 함.  

4. Implement a calculator which can add, subtract, multiply and divide (+, -, *, /). But, your program should meet the following requirements.

   *  수식을 통으로 받아서 token으로 분석 (빈칸으로 구분이 안되는 붙은 식도 분석 가능해야 함. C에서 제공하는 token 분석하는 함수도 있음.) 빈칸도 있을 수 있고, 괄호도 있을 수 있고, 두 자리 이상의 수도 처리가능해야 함.

   * Your program should analyze an expression given by token. The expressions will contain space, ‘(‘, and ‘)’ as well as double or three figures. Maybe, there is no space at the expression fiven. You can utilize the token analyzer functions in C language.

   *  Infix notation è postfix 로 변환

   * Your program should change infix notation (the expression given) to postfix notation.

   * 수식의 유효성 검사. 예를 들면, 괄호를 열기만 하고 닫지 않았다던지 하는부분 및 이항연산식을 표현한 건지 등.

   * Your program should check the validity of the expression given. For example, the pair of ( ), whether the expression can be calculated or not.



  
