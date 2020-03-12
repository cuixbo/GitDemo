Creating a new branch is quick.

master分支 [![CircleCI](https://circleci.com/gh/cuixbo/GitDemo/tree/master.svg?style=svg)](https://circleci.com/gh/cuixbo/GitDemo/tree/master)

A.测试vim git commit 信息填写提交 命令:
    1.刚进入信息页面是不可以输入的，按i,a,o,可以进入insert模式（下面会提示"-- INSERT --"代表当前处于insert模式)；
    2.在insert模式下，输入ZZ退出是没有用的；需要先按ESC退出insert模式，再输入ZZ退出可以。
    3.进入insert模式后，填写完信息，如何进行提交确认呢？同样需要按ESC退出insert模式，再输入:wq则可以保存并退出，即提交

B.测试移动本地HEAD至上一次commit处，修改部分文件后commit会怎样？
    1.
    2.

C.git stash我的代码（比如当前任务未完成，需要将已commit的信息push到远程仓库，可以先将手头任务stash，push完之后，在stash pop继续完成)
    1.git stash 将代码放入缓存区
    2.git stash pop 从缓存区释放代码