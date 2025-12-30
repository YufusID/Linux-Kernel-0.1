; Стандарт Multiboot для загрузчиков типа GRUB
section .multiboot
    align 4
    dd 0x1BADB002              ; Магическое число
    dd 0x00                    ; Флаги
    dd -(0x1BADB002 + 0x00)    ; Контрольная сумма

section .text
extern main
global _start

_start:
    call main                  ; Вызываем наш C++ код
    hlt                        ; Останавливаем процессор
