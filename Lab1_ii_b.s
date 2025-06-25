#include <xc.inc>
    
    numa_HB equ 0x20
    numa_MB equ 0x21
    numa_LB equ 0x22
 
    movlw 0xF1
    movwf numa_HB, f, a
    
    movlw 0x91
    movwf numa_MB, f,a
    
    movlw 0xB5
    movwf numa_LB, f, a
    
    
    numb_HB equ 0x30
    numb_MB equ 0x31
    numb_LB equ 0x32
 
    movlw 0x07
    movwf numb_HB, f, a
    
    movlw 0xA2
    movwf numb_MB, f, a
    
    movlw 0x04
    movwf numb_LB, f, a
    
    sum_HB equ 0x50
    sum_MB equ 0x51
    sum_LB equ 0x52
 
    ;sum the LB
    movwf numa_LB, w,a
    addwf numb_LB,w,a
    movwf sum_LB, f, a
    
    ;sum the MB
    movwf numa_MB, w, a
    addwfc numb_MB, w, a
    movwf sum_MB, f, a
    
    ;sum the HB
    movwf numa_HB, w,a
    addwfc numb_HB, w, a
    movwf sum_HB, f, a
    
    
end


