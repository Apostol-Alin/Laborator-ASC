.data
    x: .long 20
    y: .long 40
.text

.globl main

main:
    movl x,%eax
    movl y,%ebx
    movl %ebx,x
    movl %eax,y 

    mov $1,%eax
    mov $0,%ebx