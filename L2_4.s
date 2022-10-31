.data

    n: .long 25
    nu_e_prim: .asciz "Nu e prim\n"
    prim: .asciz "E prim\n"
    
.text

.globl main

main:

    mov $3, %ecx
    mov n, %eax
    cmp $2, %eax
    jl mesaj_2
    jz mesaj_1

    mov $2, %ebx
    mov $0, %edx
    div %ebx

    cmp $0, %edx
    je mesaj_2

et_loop:

    mov %ecx, %eax
    mov %ecx, %ebx
    mul %ebx

    cmp n, %eax
    jg mesaj_1
    je mesaj_2

    mov n, %eax
    mov %ecx, %ebx
    div %ebx

    cmp $0, %edx
    je mesaj_2

    add $2, %ecx
    jmp et_loop

mesaj_1:

    mov $4, %eax
    mov $1, %ebx
    mov $prim, %ecx
    mov $8, %edx
    int $0x80
    jmp exit

mesaj_2:

    mov $4, %eax
    mov $1, %ebx
    mov $nu_e_prim, %ecx
    mov $11, %edx
    int $0x80

exit:

    mov $1, %eax
    mov $0, %ebx
    int $0x80