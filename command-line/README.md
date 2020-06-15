# Command Line Tutorial

## Part I

### A note about operating systems

This tutorial works best if you are using the Bash shell. Linux and macOS come standard with Bash, which you can access in the Terminal application. Windows PowerShell uses the .NET framework, which is not Bash. For Windows users, you have several options:

1. Best option: Install [Git Bash](https://gitforwindows.org) and use the Bash shell that comes with it. This is fast.
2. Next best option: Install a Linux virtual machine like [VirtualBox](https://www.virtualbox.org) and use the Terminal that comes with it. This takes more time but gives you access to a virtual Linux machine on your PC.
3. Last resort: Use Windows PowerShell. This has some functionality, as you saw in Appendix A of Shaw. But many of the commands below will not work, including `cd` (by itself), `cd -`, `touch`, `cat` (try `type` or a text editor), `head`, `tail`, and others.

### Overview of Part II

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

* Text editors
* Terminal

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

## Part II

### Overview of Part II

#### Intermediate commands and skills

* Bash variables and commands
* Executing bash scripts and dot-files
* Parsing files
* Working with input and output
* Wildcards
* Brace expansion
* Control keys

### Variables, bash scripts, and dot-files

#### Bash variables and commands

* `A=0` — assign a variable
* `echo VARIABLE` — output the value of a variable or expression
* `$PATH` — your path variable (try: `echo -e ${PATH//:/'\n'}`)
* `$SHELL` — your current shell
* `$PPID` — process ID
* `$HOME` — your home directory (another name for `~` or `/Users/you`)

#### Loops and logic

* `for/do/done` — for loop
* `if/then/else/fi` — if/then statement

```
for i in {1..3}
do
    echo $i
done

if [ -d "temp" ]; then
    echo "Directory exists."
else 
    mkdir temp
fi
```

#### Executing bash scripts and dot-files

* `bash SCRIPT.sh` — run a bash shell script
* `source .DOTFILE` — run a dot-file like your .bash_profile

Any of the commands we have used from the command line (the bash prompt `$`) can also be typed into a text file and executed by typing `bash SCRIPT.sh` from the command line.

### More commands

We will test some of these commands with the example file `survey_scores_2015_T.csv`.

#### Parsing and sorting files

* `cut -d "," -f 5- FILE` — output 5th field through end using comma field delimiter
* `sed 's/FIND/REPLACE/g' FILE ` — replace text in a file
* `perl -e 's/FIND/REPLACE/g' FILE ` — run perl commands in the command line (advanced)
* `sort FILE` - sort a file alphabetically
* `uniq FILE` - get the unique lines in a sorted file

#### Working with input and output

* `|` — pipe output from one command to another (e.g., `sort | uniq | wc`)
* `>` — redirect (write) to file
* `<` — get output of file (other type of redirect)
* `` `COMMAND` `` — pass output of a command (e.g., in a for loop)

#### Wildcards and brace expansion

* `?` — match any single character
* `*` — match any string of characters
* `[set]` — match any character in set
* `[!set]` — match any character *not* in set
* `{start..end}` — expand a range; e.g., `b{ed,olt,ar}s`, `{2..5}`, `{d..h}`

### Control keys

Various keyboard shortcuts help you quickly and powerfully control the terminal. This section is adapted from [The Best Keyboard Shortcuts for Bash (aka the Linux and macOS Terminal)](https://www.howtogeek.com/howto/ubuntu/keyboard-shortcuts-for-bash-command-shell-for-ubuntu-debian-suse-redhat-linux-etc/) by Lowell Heddings.

Make sure you know which is the `Alt` or `Meta` key on your computer. On a Mac, you can do this by setting your Terminal preferences to "Use Option as Meta key".

#### Enabling command-line editing

The instructions below assume you're using the default keyboard shortcut configuration in bash. By default, bash uses emacs-style keys. If you’re more used to the vi text editor, you can switch to vi-style keyboard shortcuts.

The following command will put bash into vi mode:

```
set -o vi
```

The following command will put bash back into the default emacs mode:

```
set -o emacs
```

#### Working with processes

* `Ctrl+C` — Interrupt (kill) the current foreground process running in in the terminal. This sends the SIGINT signal to the process, which is technically just a request—most processes will honor it, but some may ignore it.
* `Ctrl+Z` — Suspend the current foreground process running in bash. This sends the SIGTSTP signal to the process. Type `bg` to send the process to the background (similar to typing `&` at the end of the command). To return the process to the foreground later, use the `fg process_name` command.
* `Ctrl+D` — Close the bash shell. This sends an EOF (End-of-file) marker to bash, and bash exits when it receives this marker. This is similar to running the `exit` command.

#### Controlling the screen

* `Ctrl+L` — Clear the screen. This is similar to running the `clear` command.
* `Ctrl+S` — Stop all output to the screen. This is particularly useful when running commands with a lot of long, verbose output, but you don’t want to stop the command itself with Ctrl+C.
* `Ctrl+Q` — Resume output to the screen after stopping it with Ctrl+S.

#### Moving the cursor

* `Ctrl+A` or `Home` — Go to the beginning of the line.
* `Ctrl+E` or `End` — Go to the end of the line.
* `Alt+B` — Go left (back) one word.
* `Ctrl+B` — Go left (back) one character.
* `Alt+F` — Go right (forward) one word.
* `Ctrl+F` — Go right (forward) one character.
* `Ctrl+XX` — Move between the beginning of the line and the current position of the cursor. This allows you to press Ctrl+XX to return to the start of the line, change something, and then press Ctrl+XX to go back to your original cursor position. To use this shortcut, hold the Ctrl key and tap the X key twice.

#### Deleting Text

* `Ctrl+D` or `Delete` — Delete the character under the cursor.
* `Alt+D` — Delete all characters after the cursor on the current line.
* `Ctrl+H` or `Backspace` — Delete the character before the cursor.

#### Fixing Typos

* `Alt+T` — Swap the current word with the previous word.
* `Ctrl+T` — Swap the last two characters before the cursor with each other. You can use this to quickly fix typos when you type two characters in the wrong order.
* `Ctrl+_` — Undo your last key press. You can repeat this to undo multiple times.

#### Cutting and pasting

* `Ctrl+W` — Cut the word before the cursor, adding it to the clipboard.
* `Ctrl+K` — Cut the part of the line after the cursor, adding it to the clipboard.
* `Ctrl+U` — Cut the part of the line before the cursor, adding it to the clipboard.
* `Ctrl+Y` — Paste the last thing you cut from the clipboard. The y here stands for “yank”.

#### Capitalizing characters

* `Alt+U` — Capitalize every character from the cursor to the end of the current word, converting the characters to upper case.
* `Alt+L` — Uncapitalize every character from the cursor to the end of the current word, converting the characters to lower case.
* `Alt+C` — Capitalize the character under the cursor. Your cursor will move to the end of the current word.

#### Tab completion

Tab completion is a very useful bash feature. While typing a file, directory, or command name, press Tab and bash will automatically complete what you’re typing, if possible. If not, bash will show you various possible matches and you can continue typing and pressing Tab to finish typing.

* `Tab` — Automatically complete the file, directory, or command you’re typing.

#### Command history

* `Ctrl+P` or `Up-Arrow` — Go to the previous command in the command history.
* `Ctrl+N` or `Dn-Arrow` — Go to the next command in the command history.
* `Alt+R` — Revert any changes to a command pulled from your history.