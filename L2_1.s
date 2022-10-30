.data
    x: .long 20
    y: .long 5
    sum1: .space 4
    sum2: .space 4
    cat: .space 4
    prod: .space 4
    care_metoda: .space 1

.text

.globl main

main:

metoda1:

    mov y, %eax
    mov $16, %ebx
    mul %ebx
    mov %eax, prod

    mov x, %eax
    mov $16, %ebx
    div %ebx
    mov %eax, cat

    mov cat, %eax
    add prod, %eax
    mov %eax, sum1

metoda2:

    mov x, %eax
    mov y, %ebx

    shr $4, %eax
    shl $4, %ebx

    mov %eax, x
    mov %ebx, y

    mov x, %eax
    add y, %eax
    mov %eax, sum2

exit:

    mov $1, %eax
    mov $0, %ebx
    int $0x80
