# [Data Structure HW #5]

### Introduction

Implement the following problems by C programming and upload only the source code files (such as xxx.c and xxx.h) as a zip file compressed to the homework board at abeek.knu.ac.kr.
Subject : [DS HW #5] StudentID_Name
a Zip File Attached : StudentID_Name.zip  

  

### Contents

1. **Binary Search Tree 를 generic coding을 이용하여 구현하시오.이 구현한 부분을 이후 문제에서는 활용할 것.**
Implement a binary search tree using generic coding. You should utilize it at the following problems. 
   
    [#5 Homework - BST.c](BST.c)  
   
   


　    

2. **문자열을 입력받아 1에서 구현한 Binary Search Tree에 다음 중 하나의 정렬 기준으로 저장 ( 1, 2, 3 중 택 1).**
(1) 문자열의 크기 순서. 이외의 추가 기준은 나름대로 정할 것.
   (2) 문자열은 사전식 순서. 이외의 추가 기준은 나름대로 정할 것.
   (3) 문자열의 비중 값 순서. 이외의 추가 기준은 나름대로 정할 것.
   
   - Depth-first traversal의 preorder, inorder, postorder로 출력하시오.
   
   - 또한, breath-first traversal 로도 출력하시오.
   
   - 기본적으로 문자들의 삽입, 삭제, 검색기능은 구현되어서 테스트 해 볼 수 있어야 함.
   
     
   
   Get strings, store them to the binary search tree implemented in 1.  
   
   Choose a sorting criterion among (1), (2) and (3)  
   
   1. Sort based on the string length. You can define other criteria in detail.
   2. Sort based on the alphabetic order of dictionary. You can define other criteria in detail.
   3. Sort based on the weight of string or character. You can define other criteria in detail as well as the weight
   
   - Print out the characters in the binary search tree by preorder, inorder and postorder of depth-first traversal.- Do again by breath-first traversal.
   - Basically, you should implement “insert”, “delete” and “search” of characters so that the operations can be tested.
   
   
   
   ​	[#5 Homework - BST_testtable.c](BST_testtable.c)  
