ORG 0800H ; Start pamieci na 800h / Start memory at 800h
; 1 linia / Line 1
; wydruk znaku '#' 6 razy w jednej linii za pomoca petli / Print '#' character 6 times in one line using a loop
MVI C,06H  
LOOP1:  
MVI A,23H  
RST 1  
DCR C  
JNZ LOOP1  
CALL NEWLINE  
; 2 linia / Line 2
; wydruk spacji, znaku '#' 4 razy za pomoca petli, a nastepnie spacji / Print space, '#' character 4 times using a loop, then space
MVI A,20H  
RST 1  
MVI C,04H  
LOOP2:  
MVI A,23H  
RST 1  
DCR C  
JNZ LOOP2  
MVI A,20H  
RST 1  
CALL NEWLINE  
; 3 linia / Line 3
; wydruk dwoch spacji, dwoch '#' a nastepnie dwoch spacji (uzycie 3 petli) / Print two spaces, two '#'s then two spaces (using 3 loops)
MVI C,02H  
SPACELOOP1:  
MVI A,20H  
RST 1  
DCR C  
JNZ SPACELOOP1  
MVI C,02H  
HASHLOOP1:  
MVI A,23H  
RST 1  
DCR C  
JNZ HASHLOOP1  
MVI C,02H  
SPACELOOP2:  
MVI A,20H  
RST 1  
DCR C  
JNZ SPACELOOP2  
CALL NEWLINE  
; 4 linia (zauwazmy ze taka sama jak linia 3) / Line 4 (note it's the same as line 3)
MVI C,02H  
SPACELOOP3:  
MVI A,20H  
RST 1  
DCR C  
JNZ SPACELOOP3  
MVI C,02H  
HASHLOOP2:  
MVI A,23H  
RST 1  
DCR C  
JNZ HASHLOOP2  
MVI C,02H  
SPACELOOP4:  
MVI A,20H  
RST 1  
DCR C  
JNZ SPACELOOP4  
CALL NEWLINE  
; 5 linia / Line 5
; wydruk (spacja)#(spacja) dwa razy za pomoca petli / Print (space)#(space) twice using a loop
MVI B,02H  
OUTERLOOP:  
MVI A,20H  
RST 1  
MVI A,23H  
RST 1  
MVI A,20H  
RST 1  
DCR B  
JNZ OUTERLOOP  
CALL NEWLINE  
; 6 linia / Line 6
; wydruk #(spacja)(spacja)(spacja)(spacja)# / Print #(space)(space)(space)(space)#
MVI A,23H  
RST 1  
MVI C,04H  
LOOP3:  
MVI A,20H  
RST 1  
DCR C  
JNZ LOOP3  
MVI A,23H  
RST 1  
CALL NEWLINE  
; Koniec programu / End of program
HLT  
; Podprogram do wydruku nowej linii / Subroutine for printing a new line
NEWLINE:  
MVI A,0DH ; Powrot karetki / Carriage return
RST 1  
MVI A,0AH ; Nowa linia / New line
RST 1  
RET  
; README 
; WYKONAL 
; DANIEL NOWAK A2 
; 06.11.2023 Architektura komputerow / Computer's Architecture
; symulator msc-8  2006-11-07.exe 
; Uwaga: start pamieci na 800h / Note: memory start at 800h
