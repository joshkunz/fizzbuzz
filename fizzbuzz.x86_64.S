# Language: x86_64 Assembly using the OSX (10.8.5) system call interface
# To Run (Simple Way):
#     $ cc fizzbuzz.x86_64.S -o fizzbuzz
#     $ ./fizzbuzz
# To Run (Old-Skool Way):
#     $ as fizzbuzz.x86_64.S -o fizzbuzz.o
#     $ ld -arch x86_64 -static -execute -e _main -o fizzbuzz fizzbuzz.o
#     $ ./fizzbuzz

    .globl _main
    .data
fizz: 
    .asciz "Fizz"
buzz:
    .asciz "Buzz"
newline:
    .asciz "\n"
itos_buff:
    .fill 65, 1, 0

    .text
_main:
    movq $1, %rdi
    movq $101, %rsi
    call fizzbuzz

    movq $0, %rdi
    call exit

strlen:
    mov $-1, %rax
  strlen_loop:
    incq %rax
    cmpb $0, (%rdi, %rax)
    jnz strlen_loop
    ret

puts:
    pushq %rdi
    movq %rsi, %rdi
    call strlen 
    movq %rax, %rdx
    popq %rdi

    movq    $0x2000004, %rax
    syscall
    ret

exit:
    movq    $0x2000001, %rax
    syscall

reverses:
    call strlen
    movq %rax, %rsi
    movq $0, %rdx
    movq $2, %rcx
    div %rcx
    movq $0, %rdx
    cmp $0, %rax
    jz reverses_loop_end
  reverses_loop:
    leaq -1(%rdi, %rsi), %rcx
    sub %rdx, %rcx

    movb (%rdi, %rdx), %bl
    xchgb %bl, (%rcx)
    movb %bl, (%rdi, %rdx)

    incq %rdx
    cmp %rax, %rdx
    jnz reverses_loop 

  reverses_loop_end:
    movq %rdi, %rax
    ret

# uses: rax, rbx, rcx, rdx, rdi, rsi
itos:
    leaq itos_buff(%rip), %rsi
    movq $0, %rax
  itos_clear_loop:
    movb $0, (%rsi, %rax)
    incq %rax
    cmp $65, %rax
    jnz itos_clear_loop

    movq %rdi, %rax     # rdi is the number to convert
    movq $10, %rcx      # set our divisor to 10

  itos_div_loop:
    movq $0, %rdx
    divq %rcx
    add $48, %rdx
    mov %rdx, (%rsi)
    incq %rsi
    cmpq $0, %rax
    jnz itos_div_loop

    leaq itos_buff(%rip), %rdi
    call reverses
    ret

.globl fizzbuzz
# rdi: from, rsi: to
fizzbuzz:
    cmp %rdi, %rsi
    je fizzbuzz_ret

    movq $0, %rbx

    movq %rdi, %rax
    movq $0, %rdx
    movq $3, %rcx
    div %rcx
    cmp $0, %rdx
    jnz fizzbuzz_fizz_end

    movq $1, %rbx
    pushq %rdi
    pushq %rsi
    pushq %rbx
    mov $1, %rdi
    leaq fizz(%rip), %rsi
    call puts
    popq %rbx
    popq %rsi
    popq %rdi
  fizzbuzz_fizz_end:

    movq %rdi, %rax
    movq $0, %rdx
    movq $5, %rcx
    div %rcx
    cmp $0, %rdx
    jnz fizzbuzz_buzz_end

    movq $1, %rbx
    pushq %rdi
    pushq %rsi
    pushq %rbx
    mov $1, %rdi
    leaq buzz(%rip), %rsi
    call puts
    popq %rbx
    popq %rsi
    popq %rdi
  fizzbuzz_buzz_end:
    cmp $0, %rbx
    jnz fizzbuzz_recurse

    pushq %rdi
    pushq %rsi
    call itos
    movq $1, %rdi
    movq %rax, %rsi
    call puts
    popq %rsi
    popq %rdi

  fizzbuzz_recurse:
    pushq %rdi
    pushq %rsi
    movq $1, %rdi
    leaq newline(%rip), %rsi
    call puts
    popq %rsi
    popq %rdi

    incq %rdi
    call fizzbuzz

  fizzbuzz_ret:
    ret
