.section "axw", "axw"
.global main
main:
    movl $0x11223344, instruction+3
    jmp 1f
1:  nop
instruction:
    mov $1, %rax # 0x48 0xc7 0xc0 0x01 0x00 0x00 0x00
                 #                ^ a value to move
    ret

