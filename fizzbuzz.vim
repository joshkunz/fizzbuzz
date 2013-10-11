" Language: VimScript
" To Run:
"   Vim is an editor, not really an interactive programming environment, 
"   So the steps involved in running are slightly different.
"
"   Basically, load the script in vim:
"       $ vim -S fizzbuzz.vim
"   and then run the function. In vim type ':' to enter the command-line,
"   and then type 'call FizzBuzz(1, 100)' in the command line and press enter.
"       :call FizzBuzz(1, 100)<ENTER>
"   The results of the Fizzbuzz program ran from 1 to 100 should be inserted
"   into the current buffer.

function! FizzBuzz(from, to)
    for num in range(a:from, a:to)
        let out_string = num . " "
        if num % 3 == 0
            let out_string .= "Fizz"
        endif
        if num % 5 == 0
            let out_string .= "Buzz"
        endif
        " Add our current line to the buffer
        call append(line("."), out_string)
        " Move the cursor to the next line
        call setpos(".", [0, line(".") + 1, 1, 0])
    endfor
endfunction 
