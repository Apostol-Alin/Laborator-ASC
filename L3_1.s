.data

    v: .long 1, 5, 2, 7, 7, 7, -8
    maxi: .space 4
    n: .long 7
    aparitii: .long 1

.text

.globl main

main:

    lea v, %esi
    mov $0, %ecx
    movl (%esi, %ecx, 4), %eax
    movl %eax, maxi

    mov $1, %ecx

    mov n, %eax
    sub $1, %eax
    mov %eax, n

    jmp et_parcurgere

incrementare:

    movl aparitii, %eax
    add $1, %eax
    movl %eax, aparitii
    add $1, %ecx
    jmp et_parcurgere

reset:

    movl %eax, maxi
    movl $1, %eax
    movl %eax, aparitii
    add $1, %ecx
    jmp et_parcurgere

et_parcurgere:

    cmp n, %ecx
    jg exit

    movl (%esi, %ecx, 4), %eax
    cmp maxi, %eax
    je incrementare
    jg reset

    add $1, %ecx
    jmp et_parcurgere

exit:

    mov $1, %eax
    xor %ebx, %ebx
    int $0x80