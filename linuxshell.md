## <center> Linux shell </center>
### Vim basic instruction set

#### methods to change the normal mode to edition mode.
i: move the cursor before the current charater.
I: move the cusor to the first non space character.
A: move the cursor to the end of the current line.
a: move the cursor after the current charater.
o: insert a new line after the current line.
O: insert a new line before the current line.

#### Common used VIM command
**w**: in the normal mode, w can move cursor to the beginning of the next word. ```3w``` represent move the cursor to the next 3 words.
**b** : move the cursor at the beginning of one word before the current word.
**e**: move the cursor at the end of one word after the current word.
**ge**: move the cursor at the end if one word before the current word.
**$** : move the cursor to the end of current line.
**0** : move the cursor to the beginning of current line. 
**fx**: move the cursor from current position to the word contain x on the right of current word.
**Fx**: move the cursor from current poisition ti the word contain x on the left of current word.
**Tx** and **tx**: these comand is familar wit **Fx** and **fx**, the only difference is the cursor position.
**number G**: move the cursor to the beginning of given line.
**ctrl+u** : move the cursor up half page.
**Ctrl+d** : move the cursor down half page.
**Ctrl+e** : move the content up a line.
**Ctrl+y** : move the content down a line.
**Ctrl+f** : scroll down a page.
**Ctrl+b** : scroll up a page.
**zz** : set the current line in the center of the page.
**zt** : set the current line on the top of the page.
**zb** : set the current line at the bottom of the page.
**/string** : simple search. Search the string position in the document.
**?string** : find similar, but the command will find the similar string from the bottom of the file.
**set ignorecase** ignore the up and down case
**set noignorecase** don't ingnore the case
**set hlsearch** set the hight light search
**``** can move the cursor to the prevoise position.
**ma** set a as current tag.
**`a** jump cursor the tag a 
**/\<the\>: match the whole word

#### Command of select, copy and past in vim
**Ctrl+v** : start to select, you can move the cursor to define the select region.
**y** : copy the selected region.y (yank)
**p and P** : past the copied region, p can past the content after cursor but P is used to past the content after cursor. p is represent Put.
**d or x**: delete the selected region or cut the selected region.
**r** : repace the slected region with given character.
**u, U, ~**: change the selected character to lowcase, upcase and reverse the case.
**yy and nyy** : represent copy a line or n lines.
**y^** : copy content between first character and current cursor of the line.
**y$** : copy content beween line tail and current cursor.
**yw** : copy a word. If you want to copy n word. ```nyw```
**yg** : copy the content between current cursor and the end of current document. You also can use ```nyg``` to copy content between current cursor and nth line.
**d** : cut the selected content.
**dd** : cut the current line.
**d^** : cut to the line head.
**d doller symbol** : cut to the line tail.
**dw** : cut a word
**dg** : cut to the doc end.


The following content is used to record the basic shell command of linux.
* **pwd** : display the current work directory
* **mkdir** : create a new directory
* **rmdir** : remove an existing directory
* **echo $PATH** : print the path on the terminal
#### methods to operate the files and folders
cp: copy the given file to given folder with given name.
rm: remove the given file.
mv: move the given file to given folder with given name.
ls: list the files and folder in current work directory. 
**cd**: change directory to the given one.

#### Change the properties and access of given file or folder.
chgrp(change group): this command can be used to change the belonged group of the given file or folder. ```chgrp linux filename``` can be used to chagne the file from prevouse group to linux group. If the given group is not existing, errors will be thrown.

chown(change owner): this comand can be used to change the file or folder owner.

chmod: change the authority of given file. ```chmod 777 filename``` can be used to change given file's authority to -rwxrwxrwx. Each authority can be represent by a responsible number.
r: 4 
w: 2
x: 1
You also can change the authority of the file by using symbol. 


|command|parameters|operator|arg|target|
|-|-|-|-|-|
|chmod| u(user)<br> g(gorup)<br>o(other)<br>a(all)| +<br>-<br>=<br>| file or folders|

examples: ```chmod u=rwx, go=r a.txt```
```chmod a-x a.txt``` represent remove x from all counts.

#### Print the information of OS
uname : print system infromation. Use man uname to check the description of the command.

lsb_release: print the distribution-specific information.

#### The commen used shortcut for linux bash
1. **ctrl+c** : cancel the current command
2. **ctrl+l** : clear the screen. It's the same with clear command.
3. **ctrl+d** : log off the current count
4. **ctrl+r** : search the history command.
5. **ctrl+a** : move the cursor to the front of the line.
6. **ctrl+e** : move the cursor to the end of the line.
7. **ctrl+u** : delete the content before cursor.
8. **ctrl+y** : past
9. **ctrl+k** : delete the content after cursor.
10. **ctrl+f** : move the cursor one character right.
11. **ctrl+b** : move the cursor one character left.
12. **ctrl+w** : delete the current character.
13. **ctrl+insert** : copy the current command line.
14. **Esc+.** : get the last part of the previouse command. seperator is blank space.
15. **ctrl+<--**: move the cursor to beginning of left word.
16. **ctrl+-->** : move the cursor to the beginning of the next word.
17. **!!** : excute the last command.
18. **!c** : excute the lastest comand begain with c


## Commnads In linux 
* **find** : atime, ctime and mtime: a represent acess, c represent change[include authority and other things], m represent modify. 
* **fg** :if you want to go back to the background job of vim, you can use fg to call the vim page back. You can use bg to check the 
jobs on the background. If you want to call the 2nd job, you can use fg 2 to show the job.
* **jobs**: use jobs to show all worked jobs.



## Shell script in linux
* variable: you can use $variableName or ${ variableName } to get the value of the variable.
*  ``` for file in `ls /etc`; ``` or ``` for file in $(ls /etc); ```
* if you do not want to change the value of the variable. you should use readonly to decorate the variable.
``` Name="good" 
    readonly Name
```
* the shell file can be passed parameters: by using the following script.
~~~
#!/bin/bash
echo "this is a demo for the shell parameters:";
echo "the execute file is : $0";
echo "the first parameter: $1";
echo "the second Parameter: $2";
