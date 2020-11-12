# as link_label0.s -o link_label0.o
# as link_label1.s -o link_label1.o
# ld link_label0.o link_label1.o
.global other
other:
    mov $_start, %rax
