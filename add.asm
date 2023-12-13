section .data
    x db '5'
    y db '4'
    sum_msg db "Sum of x and y is: ", 0

section .bss
    sum resb 1

section .text
    global _start

_start:
    ; Преобразуем ASCII-код '0' в числа
    mov eax, [x]
    sub eax, '0'
    mov ebx, [y]
    sub ebx, '0'
    
    ; Вычисляем сумму
    add eax, ebx
    
    ; Преобразуем результат обратно в ASCII-код
    add eax, '0'

    ; Сохраняем результат в памяти
    mov [sum], al

    ; Выводим сообщение
    mov ecx, sum_msg
    mov edx, 23 ; Длина сообщения
    mov ebx, 1
    mov eax, 4
    int 0x80

    ; Выводим результат
    mov ecx, sum
    mov edx, 1
    mov ebx, 1
    mov eax, 4
    int 0x80

    ; Завершаем программу
    mov eax, 1
    xor ebx, ebx
    int 0x80
