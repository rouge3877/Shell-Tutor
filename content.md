# Linux Shell Tutorial

* 2025-02-23
* ygLi, yxLi

------

## 0. Linux Shell

* Brief Intro: all you need to know about starting using a CLI.
* Basic but useful command line tools.
* How to write a bash scripts and what can those scripts do?

---

### Target

1. Using **shell** to get the work done (doing experiment, coding, etc.) efficiently.
2. Using **bash** script.
3. 😍 The `man`.

------

## 1. GUI vs CLI

which is better?


<div style="display: flex; justify-content: space-between; align-items: center;">
    <img src="./assets/GUI.png" alt="GUI" style="width:49%;">
    <img src="./assets/CLI.png" alt="CLI" style="width:49%;">
</div>

------

## 2. Shell

The system user-interface in CLI.
Just like the Desktop in GUI world (from user’s view).

* Launch app
* execute command
* manage foreground/background tasks

---

### Basic Setup

* Terminal (emulator): emulate a (texted-based) terminal inside the GUI environment.

* *Try the tty: `Ctrl + Alt + F1` (F1-F6, in linux)*

* SSH to server:
    * `ssh <your stuid>-ics@igw.dfshan.net -p2291`
    * Strong password or use ssh key to login
    * Keyboard shortcuts
        * `ctrl + r` (to find history), `tab` (to autofill)
        * `ctrl + c` (to kill `SIGINT`)


---

### What's SHELL?

1. What's Shell?
2. Ah, the black screen with white text
3. Shell? Terminal? Console? Bash? CMD? CLI? .... ?
4. 🤯

*Google for answer*


------

## 3. Use Shell

```bash[0:]
echo "Hello, Shell"

cmatrix

sudo tree /

sl

...
```

(*一行代码让你变成黑客*)

---

### Basic Tools (Commands)

```bash
command-name arg1 arg2 arg3 ... # Basic format
```

* Directories: `pwd`, `cd`, `mkdir`
* File: `touch`, `cp`, `mv`, `rm`, `cat`, `less`
* Simple functions: `sort`, `wc`, `echo`
* Others: `grep`, `chmod`
* Code Editor: `vim`
* Keep the connection: `tmux`, `screen`, etc.


<img src="./assets/tmux.png" alt="tmux" style="width:45%;">

---


### `Tar`

Usage Scenario: archive files in 1 bundle

* `-c`: create a tarball
* `-x`: open a tarball
* `-v`: verbose mode [displays progress]
* `-f`: specify file name

```bash[0:]
tar -cf name-of-archive.tar /path/to/dir/ # compress directory
tar -cf name-of-archive.tar /path/to/filename # compress file
tar -cf name-of-archive.tar dir1 dir2 dir3 # compress multiple dirs
tar -xf name-of-archive.tar # open a tar file in current directory
```

---

### SO MANY COMMAND 😭

* `-h`, `--help`
* `man` - man is the system's manual pager (<u>Ask the man XD</u>)
    * `man -k ipc`
    * `man man`
    * Some of the following command can be found their manpage, but how about `cd` ?
* `tldr` - https://github.com/tldr-pages/tldr
    * There is room for simpler help pages focused on practical examples.
    * `man tar` v.s. `tldr tar`

---


### Install Software in CLI

1. Package manager: `apt` (ubuntu, Debian), `brew`(macOS), `dnf`(fedora)
    * Search (e.g. `apt search`)
    * https://command-not-found.com/

2. [Build from source](https://github.com/abishekvashok/cmatrix) (no suitable version, or need to modify their code)
    * README/INSTALL doc
    * configure and make install

---

### Communication: Pipe

* A lot of CLI tools, communication is required to do complex jobs.
* Pipe: `|` use the `stdout` of previous command as the `stdin` of the next.
    * `ls -l | grep 22[01234] | wc -l`

<img src="./assets/pipe.png" alt="pipe" style="width:70%;">

---


### Communication: Redirect 1

* A lot of CLI tools, communication is required to do complex jobs.
* Redirect: `>` & `<`, `stdout` to file or file to `stdin` (normally).

<img src="./assets/redirect.png" alt="redirect" style="width:70%;">

---

### Communication: Redirect 2

* A lot of CLI tools, communication is required to do complex jobs.
    * 0 - `stdin`, the standard input stream.
    * 1 - `stdout`, the standard output stream.
    * 2 - `stderr`, the standard error stream.

<img src="./assets/redirect-test.png" alt="redirect-test" style="width:70%;">

---

### Combining Commands

```bash[0:]
ls -l | grep 22[01234] | wc -l # count stu number

find . -name "*.[ch]" | xargs grep "#include" | sort | uniq # include files

diff <(ls -a ../yxli) <(ls -a ../ykliu)

du -sc /usr/bin/* | sort -nr | less

find . -type f -name "*.sh" -print0 | xargs -d "\0" zip -r shell.zip

strace ./hello |& grep write # strace ./hello > /dev/null, strace ./hello 2> /dev/null
```


---

### Further More

* https://github.com/jlevy/the-art-of-command-line
* 多找那个男人 `man`


------

## Shell Scripts

```bash[0:]
```

---

### TEst

Note:
adasd


------

## The Best Way to Learn it , is to use it.

## Happy Shell-ing `XD`

> * MIT - [The Missing Semester](https://missing-semester-cn.github.io/)
> * USTC - [Linux101](https://101.ustclug.org/)

