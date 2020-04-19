[BITS 16]
[ORG 0x7C00]

section .text
    global start
start:
    mov si, sss
    call print_string
    jmp exit

print_char:
    mov ah, 0x0e
    mov bh, 0x00
    mov bl, 0x07

    int 0x10
    ret

print_string:
    mov al, [si]
    call print_char
    inc si
    test al, al
    jz ret_print_string
    call print_string
    
ret_print_string:
    ret
    
exit:
    jmp $ ;Infinite loop
    
sss db 'Hello again :)', 0

times 510-($-$$) db 0

db 0x22
db 0x22
