.data

    s: .asciz "Ana are mere\n"
    t: .space 14
    terminator: .asciz "\n"
    n: .long 14
    c: .space 1

.text

.globl main

main:

    movl n, %eax
    sub $3, %eax
    movl %eax, %ecx
    movl %eax, n

    lea s, %esi
    lea t, %edi

et_loop:

    cmp $0, %ecx
    jl afisare

    mov n, %eax
    sub %ecx, %eax
    movb (%esi, %ecx, 1), %dl

    movb %dl, (%edi, %eax, 1)

    sub $1, %ecx
    jmp et_loop

afisare:

    mov $4, %eax
    mov $1, %ebx
    mov $t, %ecx
    mov $14, %edx
    int $0x80

exit:

    mov $1, %eax
    xor %ebx, %ebx
    int $0x80