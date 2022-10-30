.data

    a: .long 25
    b: .long 5
    c: .long 6
    min: .space 4

.text

.globl main

main:

    mov a, %eax
    mov %eax, min

    mov b, %eax
    mov min, %ebx
    cmp %ebx, %eax
    jl et1
    jmp continuare

et1:

    mov b, %eax
    mov %eax, min

continuare:

    mov c, %eax
    mov min, %ebx
    cmp %ebx, %eax
    jl et2
    jmp exit

et2:

    mov c, %eax
    mov %eax, min

exit:

    mov $1, %eax
    mov $0, %ebx
    int $0x80