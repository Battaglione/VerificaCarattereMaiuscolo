;Rossetti Jacopo
;24/11/2020
;Esercizio Fatto A scuola in data 24/11/2020

TITLE Verifica Vettore 10 elementi (Verifica se il carattere e maiuscolo)

.MODEL SMALL

.STACK                                                                      

;qui vanno le istruzioni o i dati del segmento puntato dal registro SS
    DW   128  DUP(0)  
    
.DATA 

;qui vanno le istruzioni o i dati del segmento puntato dal registro DS
    elenco DB 0,1,'A','a','C','Z','b',8,9,'B'
    maiusc DB 0

.CODE                                                                                                   
.STARTUP
 lea si,elenco
 mov cx,10
ciclo:
    mov al,[si]
    cmp al,41h
    jae ver1
    inc si
    loop ciclo
    jmp fine
ver1:
    cmp al,5Ah
    jbe ver2
    inc si
    loop ciclo 
    jmp fine
ver2:
    inc maiusc
    inc si
    loop ciclo 
    jmp fine 
    
;servizio DOS di chiusura programma 
fine:
    mov ax, 4c00h ; exit to operating system.
    int 21h    
END

