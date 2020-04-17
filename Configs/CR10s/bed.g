M561 				; clear any bed transform
G29 S2				; Clear bed height map
; Probe 2-points
M401 				; Deploy probe - deployprobe.g
G30 P0 X20 Y150 Z-9999 		; Center Left
G30 P1 X300 Y150 Z-9999 S2 	; Center Right
M402 				; Retract Probe - retractprobe.g