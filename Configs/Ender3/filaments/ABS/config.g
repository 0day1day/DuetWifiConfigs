; Raise temp of heated bed to 50 and nozzle to 200

; New values
M307 H0 A279.8 C665.7 D2.6 S1.00 V24.0 B0
M307 H1 A361.4 C126.5 D5.6 S1.00 V24.1 B0

M572 D0 S0                             	  	; Presure Advance
M592 D0 A0 B0					;nozzle 0.5						
M593 F45						; DAA 
M579 X1.01010101010101 Y1.01010101010101		; Scale Cartesian axes
T0							;Tool 0

;M140 S95			; Set bed temp to 50
;M116				; Wait for temps to be reached...
G10 P0 S240			; Set extruder temp (tool 0) to 240
M116
