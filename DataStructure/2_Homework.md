# [Data Structure HW #2]

### Introduction

Implement the following problems by C programming and upload only the source code files (such as xxx.c and xxx.h) as a zip file compressed to the homework board at abeek.knu.ac.kr.
Subject : [DS HW #2] StudentID_Name
a Zip File Attached : StudentID_Name.zip  

  

### Contents

1. queue를 array와 linked list 두 가지 버전으로 구현하시오. 이 구현한 부분을 이후 문제에서는 활용할 것.
Implement two versions of queue using array and linked list; you should implement both of them. You should utilize them at the next problems.  
   
    [#1 Homework - ArrayQueue.h](ArrayQueue.h)  
   
    [#1 Homework - LinkedQueue.h](LinkedQueue.h)  


　    

2. 은행 서비스 구현.
Implement a service at a bank utilizing the two versions of queue implemented. You should implement 2 programs of the service.
   
   **1번에서 구현한 두가지 버전의 queue로 은행에 도착하는 사람들에 대한 서비스를 구현하시오.**
   
   굵은글씨는 프로그램에서 출력되는 부분, 얇은 글씨는 외부 입력  
   Bold type letters are displayed. Non-bold type letters are input.  
   
   　
   
   실행 예) Execution Example)  
   
   **In (0), out (1), exit (2) :** 0  
   **Customer :** Gildong Hong  
   **The current status of Queue : (Gildong Hong1)**  
   **In (0), out (1), exit (2) :** 0  
   **Customer :** Gildong Kim  
   **The current status of Queue : (Gildong Hong1, Gildong Kim2)**  
   **In (0), out (1), exit (2) :** 1  
   **Customer :** Gildong Kim  
   **The current status of Queue : (Gildong Kim1)**  
   **In (0), out (1), exit (2) :** 1  
   **Customer :** Gildong Kim  
   **The current status of Queue : ()**  
   **In (0), out (1), exit (2) :** 2  
   
   
   
   [#2 Homework - Bank.c](Bank.c)  
   
   [#2 Homework - BankQueue.h](BankQueue.h)  
