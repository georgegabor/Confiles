
Yank/paste/delete into choosen register:
\"b2yy                                                 '>>>'   yanks 2 lines into b register
:let @a="This is a"                                    '>>>'   Puts "This is a " into a register without the quotation marks
\"bp                                                   '>>>'   pastes the content of the b register
<Ctrl-r> b                                             '>>>'   pastes the content of the b register to the command line, same in INSERT mode
:dk                                                    '>>>'   Delete into k register

Copy/Move line:
:[range] m[ove] [address]                              '>>>'   Same for copy(co[py])
:3,9t20                                                '>>>'   lines3-9 to 20, use $ instead of 20 if u want it to the end of file

Put register content to a certain line from cmd line:
:[line] pu[t] [regname]
:22 put b                                              '>>>'   pastes the content of the b register below the 22nd line

Global:
:[range]g/pattern/cmd
:g/error/d                                             '>>>'   Delete all lines containing the pattern
:g!/error/d                                            '>>>'   Delete all lines not containing the pattern
:g/^\s*$/d                                             '>>>'   Delete all blank lines in the current file
:g/vim/normal @a                                       '>>>'   Matches all lines with string "vim", and executes the macro on them.
:g/{/norm f{xfx }                                      '>>>'   Find all { then cut them, how to remove braces chapter
:g/^/norm o                                            '>>>'   Puts an empty line btw each line in the whole file
:g/^/norm Ablbla                                       '>>>'   Puts blbla at the end of every line in the whole file
:3& | 5&                                               '>>>'   Repeat last substitution on line 3 and 5
:v/./,/./-j                                            '>>>'   Compress multiple occurrences of blank lines into a single blank line
:v/^[^ \t]\+$/,/^[^ \t]\+$/-j                          '>>>'   Kill all - seemingly empty - lines contains tabs and/or spaces
:%s/^[ \t]\+$//g                                       '>>>'   Same as above but it simply cleans
:%s/^\_s\+/\r/g                                        '>>>'   Another way to collapse empty lines, including whitespace
:g/func/#                                              '>>>'   List all functions in the file
:g/pattern/ .w>>filename                               '>>>'   Select pattern and write into file
:g/^/m0                                                '>>>'   Reverse a file

Macro:
:%norm @a                                              '>>>'   Execute macro on the whole file
:10,$norm @a                                           '>>>'   Execute macro from line 10 til the end of the file

Visual:
gv                                                     '>>>'   Repeat the last visual selection
Ctrl-V + select the columns + g + Ctrl-A or Ctrl-X     '>>>'   Increment or decrement numbers verticaly RELATIVE !!! to each other
:5,10w newfilename                                     '>>>'   Copy selected lines to another file
:g/pattern/ .w>>filename                               '>>>'   Select pattern and write into file
<'>'! column -t -o ' '                                 '>>>'   o is to define the delimiter, in this case it's a whitespace

Auto-completion:
In insert mode press Ctrl-n or Ctrl-x + one of the following
1 - whole lines                                        '>>>'   i_CTRL-X_CTRL-L
2 - keywords in the current file                       '>>>'   i_CTRL-X_CTRL-N
3 - keywords in dictionary                             '>>>'   i_CTRL-X_CTRL-K
4 - keywords in thesaurus , thesaurus-style            '>>>'   i_CTRL-X_CTRL-T
5 - keywords in the current and included files         '>>>'   i_CTRL-X_CTRL-I
6 - tags                                               '>>>'   i_CTRL-X_CTRL-]
7 - file names                                         '>>>'   i_CTRL-X_CTRL-F
8 - definitions or macros                              '>>>'   i_CTRL-X_CTRL-D
9 - Vim command-line                                   '>>>'   i_CTRL-X_CTRL-V
10 - user defined completion                           '>>>'   i_CTRL-X_CTRL-U
11 - omni completion                                   '>>>'   i_CTRL-X_CTRL-O
12 - spell-checking suggestions                        '>>>'   i_CTRL-X_s
13 - keywords in ‘complete’                            '>>>'   i_CTRL-N

Generating numbered lists/lines:
38put =range(1,10)                                     '>>>'   puts numbered lines from 1 to 10 from line 39 to the next 10 lines
:%s/^/\=line('.').".                                   '>>>'   Add line numbering according to the corresponding line numbering
:%!cat -n                                              '>>>'   Same as above but with different formatting
:%!nl -ba                                              '>>>'   Same as above, both works with visual mode

Generating ip addresses:
:for i in range(1,100) | put ='192.168.0.'.i | endfor  '>>>'   This is self-explanatory

Replacing/Substituting:
%s/Atom/Vim/c | %s/bad/good/c | %s/slow/fast/c         '>>>'   Before-Atom is bad and slow. After-Vim is good and fast.
.m -4 | +3m . | +2m . | +5                             '>>>'   Reverse 4 lines 1234 -> 4321. Cursor must be at the 4th line at the beginning.
:%s/^\(.*\)\(\n\1\)\+$/\1/gec                          '>>>'   Removes adjacent duplicate lines
:4,$s/\d\+/\=submatch(0) + 1/                          '>>>'   From line 4th til the end, substitute every digit(\s\).
                                                               Pattern to replace- \=submatch(0) + 1 – gets the matched patter and adds 1 to it

:%s/\.\s*\w/\=toupper(submatch(0))/g                   '>>>'   Capitalizing the first character of every sentence.
:%s/\v([^,]*), (.*)$/\2, \1                            '>>>'   '.'   = any character
                                                               '*'   = zero or more times of the previous atom
                                                               '\+'  = one or more times of the previous atom
                                                               ', '  = literal char comma+space
                                                               '\s*' = any number of spaces
                                                               '\d+' = one or more digits
                                                               '[\]:.)}\t ]\s*'=any one of the character ]:.)}<tab> <spaces> followed by a bunch of spaces.
t[aeiou]n                                              '>>>'   matches tan, ten, tin, ton and tun.
\a\a\a                                                 '>>>'   matches any 3 characters '\a' = any alphabetic character
\d\d\d                                                 '>>>'   matches any 3 digits
[]                                                     '>>>'   range operator[0-9aeiou]
[:upper:]                                              '>>>'   matches all upper characters
[:lower:]                                              '>>>'
[[:upper:][:lower:]]                                   '>>>'
 a\{3,5}                                               '>>>'   will match 3 to 5 a's
 a\{,5}                                                '>>>'   0 to 5
 a\{3,}                                                '>>>'   3 to infinity
 a\{3}                                                 '>>>'   Exact match=3 a's
1MGU103                                                '>>>'   Can match with \d\u\u\u\d\d\d or \d\u\{3}\d\{3}

Command:
write !sudo tee %                                      '>>>'   Save file as root

Others:
vim -u NONE -U NONE -N -i NONE                         '>>>'   Load vim without .vimrc and all
<C-x><C-e>                                             '>>>'   Edit shell command
<C-e><C-y>                                             '>>>'   Expose one more line at the top/bottom
zz/z<Enter>/z-                                         '>>>'   Center the current line/Current line at the top/Current line at the bottom
:sort! ui                                              '>>>'   Sort descending order(!), removes duplicates(u), ignores case(i)
autocmd {event} {pattern} {cmd}
[I                                                     '>>>'   List all occurences of the word under the cursor in a window

vim --startuptime startuptime.log
Start Vim as usual, and execute the following set of commands-
:profile start profile.log
:profile func *
:profile file *
quit Vim, Open profile.log , set foldmethod=indent , as the file is large and hard to navigate

<C-z>                                                  '>>>'   suspend vim and go back to terminal
fg                                                     '>>>'   go back to vim
:h ordinary-atom
:vimgrep /\<word\>/                                    '>>>'   :copen open the quickfix window, :ccl to close iw
:tab help holy-grail                                   '>>>'   to see all Ex-command commands
:scriptnames                                           '>>>'   list all loaded scripts
:set spell then type z= (cursor on the word)
:w !sh                                                 '>>>'   Sends the entire buffer through the shell like it was a bash script
:% !sh                                                 '>>>'   Sends the entire buffer through the shell like it was a bash script,
                                                               but you can also specify a range to be executed
gg=G                                                   '>>>'   Reindent the whole file
tab help internal-variables
:dig[raphs]                                            '>>>'   Special characters- Press C-k in insert mode then the combination
:hi[light]
:match error /word/                                    '>>>'   match the word with the error highlighting,
                                                               can use 2match and 3match, so 3 different word
:scr or scriptnames                                    '>>>'   Lists the loaded scripts
:map                                                   '>>>'   Shows keymappings
:map <buffer>                                          '>>>'   Shows keymappings for buffer
map!                                                   '>>>'   Insert and command line mode, map for all the rest
:echo mapcheck(';g', 'n')                              '>>>'   Check whether it's mapped

Comment for different filetypes:
:autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
:autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>

Macro i used formatting:
let a='0f'v$x55pa|p'
:g//norm @a
:set ts=2 noet | retab! | set et ts=4 | retab          '>>>' Retabbing

 " vim:tabstop=4:expandtab:shiftwidth=4

