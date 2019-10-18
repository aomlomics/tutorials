## Command Line Tutorial: Part I

#### A note about operating systems

This tutorial works best if you are using the Bash shell. Linux and macOS come standard with Bash, which you can access in the Terminal application. Windows PowerShell uses the .NET framework, which is not Bash. For Windows users, you have several options:

1. Best option: Install [Git Bash](https://gitforwindows.org) and use the Bash shell that comes with it. This is fast.
2. Next best option: Install a Linux virtual machine like [VirtualBox](https://www.virtualbox.org) and use the Terminal that comes with it. This takes more time but gives you access to a virtual Linux machine on your PC.
3. Last resort: Use Windows PowerShell. This has some functionality, as you saw in Appendix A of Shaw. But many of the commands below will not work, including `cd` (by itself), `cd -`, `touch`, `cat` (try `type` or a text editor), `head`, `tail`, and others.

### Overview of today's lesson

#### Setup

* Open a shell in Terminal (Mac/Linux) or GitBash (Windows)
* Create a working directory for the course, and a lessons directory inside that
* Copy the day's lesson from GitHub to your lessons folder

#### Basic commands and skills

* Moving between directories
* Absolute and relative paths
* Creating, moving, and removing files and directories
* Investigating text files
* Working with commands and processes
* Tab-completion of commands and paths
* GUI and command-line text editors

#### Customization

* Customize your Finder window (or similar on non-Mac)
* Customize up your Bash environment

### Basic commands

#### Moving between directories

* `pwd` — print working directory
* `ls` — list contents of working directory
* `cd DIRECTORY` — change to directory
* `cd ~` or `cd` — change to home directory
* `cd -` — change to previous directory

#### Absolute and relative paths

* `.` — current directory
* `..` — one directory up
* `../..` — two directories up
* `/` — root directory
* `~` — home directory

#### Creating, moving, and removing files and directories

* `mkdir DIRECTORY` — make directory
* `rmdir DIRECTORY` — remove empty directory
* `touch FILE` — create an empty file or change file modification time
* `cat FILE` — print contents of file
* `cat > FILE` — write to file (warning: this will overwrite the file if it exists)
* `cat >> FILE` — append to file (safer alternative to above in some cases)
* `cat FILE1 FILE2 > FILE3` — combine two files into third file
* `cp FILE1 FILE2` — copy file
* `mv FILE1 FILE2` — move file
* `rm FILE` — remove file (use `rm -i` to have the command ask before deleting)
* `ln -s FILE LINK` — make a symbolic link

#### Investigating text files

* `less FILE` — view a text file
* `head -n N FILE` — first N lines of file
* `tail -n N FILE` — last N lines of file
* `tail -n +S FILE` – last lines of file starting at line S
* `wc FILE` — count the words and characters in a file
* `open FILE` — open a file using default program (on a Mac)
* `file FILE` — get the file type for file(s)
* `grep REGEX FILE` — search a text file for a string or regular expression

#### Working with commands and processes

* `man COMMAND` — display manual page of command if it exists (also try `help` or `info`)
* `COMMAND --help` — display usage information
* `which COMMAND` — show location of command
* `history` — display past commands
* `top` — display current processes
* `exit` — close the current session

### Text editors

#### GUI text editors

Popular text editors for writing code are [Atom](https://atom.io) and [Sublime Text](https://www.sublimetext.com). Download and install one of them if you haven't already.

A great way to document your work is using Markdown, a simple markup style. It is used widely in Jupyter notebooks and GitHub. Many text editors support Markdown, but I like the program [Typora](https://www.typora.io), available for Mac, Windows, and Linux. I use it as a virtual lab notebook for my bioinformatics research.

#### Command-line text editors

For small jobs or if you want to stay inside the terminal, there are other useful programs. Note: `cat` is only useful for creating very basic files, or starting files and finishing them in a proper text editor.

* `nano FILE` — nano is the most basic text editor (see Appendix: The Nano Text Editor at end of this lesson)
* `emacs FILE` — emacs is a popular full-featured text editor controlled by keystrokes
* `vim FILE` — vim or vi is a popular competitor to emacs that loads faster 

See the section [The Nano Text Editor](https://github.com/cuttlefishh/python-for-data-analysis/blob/master/lessons/lesson02.md#appendix-the-nano-text-editor) in my course [Python For Data Analysis](https://github.com/cuttlefishh/python-for-data-analysis) for more about the Nano text editor.

### Customizing your terminal

See the section [Setting up your bash environment](https://github.com/cuttlefishh/python-for-data-analysis/blob/master/lessons/lesson02.md#setting-up-your-bash-environment) in my course [Python For Data Analysis](https://github.com/cuttlefishh/python-for-data-analysis) for instructions on customizing your bash environment.

For example, add this to your `.bash_profile` to have your `rm` command ask before deleting a file:

```
alias rm='rm -i'
```
