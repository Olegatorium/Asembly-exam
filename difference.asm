section .data
    x db '7'
    y db '3'
    diff_msg db "Difference of x and y is: ", 0

section .bss
    diff resb 1

section .text
    global _start

_start:
    ; Вычитаем ASCII-код '0' из каждой цифры, чтобы получить числа
    mov eax, [x]
    sub eax, '0'
    mov ebx, [y]
    sub ebx, '0'
    
    ; Вычисляем разность
    sub eax, ebx
    
    ; Прибавляем '0' к результату, чтобы получить ASCII-код разности
    add eax, '0'

    ; Сохраняем результат в памяти
    mov [diff], al

    ; Выводим сообщение
    mov ecx, diff_msg
    mov edx, 27 ; Длина сообщения
    mov ebx, 1
    mov eax, 4
    int 0x80

    ; Выводим результат
    mov ecx, diff
    mov edx, 1
    mov ebx, 1
    mov eax, 4
    int 0x80

    ; Завершаем программу
    mov eax, 1
    xor ebx, ebx
    int 0x80
