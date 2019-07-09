# How to use Git
## contents

1. about Git

2. install GitBash

3. create new repository

4. connect with root folder

5. push and pull

6. take other's git    

   

### 1. About Git
Git is **distributed version-control system** for tracking changes in source code during software development. It is designed for coordinating work among programmers, but it can be used to track changes in any set of files. Its goals include **speed, data integrity, and support for distributed, non-linear workflow**

[wikipedia / Git](https://en.wikipedia.org/wiki/Git)



**Repository** : remote Repository, Local Repository
**Push** : upload to Remote Repository
**Clone** : copy from other's repository to your Local Repository
**Pull** : update from remote repository to local repository
**Commit** : records of edits
**Work Tree** : folders
**Index** : the space between repository and work tree before executing commit

![image](/capture_intro1_4_1.png)

when you edit files, you can commit files you want only.



[누구나 쉽게 이해할 수 있는 Git 입문](https://backlog.com/git-tutorial/kr/)


### 2. install Git Bash  
[GitBash](https://gitforwindows.org/)

### 3. create new repository

![image](/git_cmd.png)



#### Command

* **git** : git command list
* **git --version** : check git version
* **git config --global user.name github_nickname**  : connect with github
* **git config --global user.email github_email_acount** : connect with github
* **cd folder_path** : get into the folder
* **git clone git_path** : copy from remote repository's git to local repository(the folder)



![image](C:\Users\82103\Desktop\TIL\Git\local_repository.png)



When I create new files in local repository and want to push the whole things to remote repository,

#### Command

* **git add file_name.type** : make index
* **git commit -m "Add Text File [file_name.type]"** : commit files and leave comments about edits
* **git push** : push this commitments