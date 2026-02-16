# Ch01 An Overview of Tcl and Tk

```
sajang@macpro:~/Learning/tcltk_expect/ch01$ whereis tclsh
tclsh: /usr/bin/tclsh /usr/share/man/man1/tclsh.1.gz
sajang@macpro:~/Learning/tcltk_expect/ch01$ ls -al /usr/bin/tclsh
lrwxrwxrwx 1 root root 8 Aug 27  2024 /usr/bin/tclsh -> tclsh8.6
sajang@macpro:~/Learning/tcltk_expect/ch01$
```

```
$ tclsh
% expr 2 + 2
4
% expr 2 * 10 - 1
19
% expr 14.1*6
84.6
% exprt sin(.2)
invalid command name "exprt"
% expr rand()
0.422779303706614
% expr rand()
0.6517573970611009
% expr (3 > 4) || (6 <= 7)
1
% exit
sajang@macpro:~/Learning/tcltk_expect/ch01$
```
All values in Tcl have a string representation and may also have a more
efficient internal representation.

## Variable and Substitutions

```
% set a 44
44
% expr $a * 4
176
% set b [expr $a*4]
176

```
Tcl also provides command substitution, which allows you to use the result
of one command in an argument to another command. Square brackets invoke
command substitution: everything inside the brackets is evaluated as a
separate Tcl script, and the result of that script is substituted into the
workd in place of the bracketed commands.

## Control Structures

```
%
% proc factorial {val} {
        set result 1
        while {$val>0} {
                set result [expr $result*$val]
                incr val -1
        }
        return $result
}
% factorial 3
6
% factorial 20
2432902008176640000
% factorial 0.5
expected integer but got "0.5"
%
```
