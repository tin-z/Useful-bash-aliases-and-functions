# Useful-bash-aliases-and-functions

 The following text contains a list of bash aliases and functions that i use daily in my work.
 - [bash aliases](./bash_aliases.sh)

---

### List files ###

 _Name_        | _Arguments_   | _Description_  
:------------- |:-------------:| ----------------
**frshls** | `[path] [#N]` | List the `#N` newest files in directory `path` (default values:`#N=1`,`path=./`)
**frshmv** | `[path] [#N]` | Move the `#N` newest files in directory `path` to the current directory
**frshcp** | `[path] [#N]` | Copy the `#N` newest files in directory `path` to the current directory
**xss** | `[path,file]` | Open the file or directory selected (default values:`path=./`)
**set_workdir** | `[path]` | Declare the bash alias `wknow` as `cd path` (default values:`path=./`)


### Fix typos and other stuff ###

 _Name_        | _Arguments_   | _Description_  
:------------- |:-------------:| ----------------
**cls** | | Clear the terminal screen
**sl** | | List directory contents `ls`
**clipbar** | | Copy from the STDIN to your clipboard (use cases:`netstat -tulpn \| clipbar` OR `clipbar <<EOF\n blah \nEOF`)
**gtfo** | `[pid]` | Kill the process `pid` by sending a SIGSEGV signal
**history_uniq** | | List commands from the bash history without duplicates
**history_uniqless** | | Print history_uniq's output with 'less'



### Editors ###

 _Name_        | _Arguments_   | _Description_  
:------------- |:-------------:| ----------------
**cscope_cpp** | | Generate cscope.files targetting C/C++ source codes in the current directory
**cscope_java** | | Generate cscope.files targetting Java source codes in the current directory
**cscope_py** | | Generate cscope.files targetting Python source codes in the current directory
**cscope_all** | | Generate cscope.files targetting C/C++,Java,Python source codes in the current directory
**cscope_database** | | Generate a cscope database file in the current directory
**cscope_Clean** | | Delete from the current directory cscope related files


### prompt settings ###

 _Name_        | _Description_  
:------------- | ----------------
**T1PROMPT** | ![](t1prompt.jpg)





