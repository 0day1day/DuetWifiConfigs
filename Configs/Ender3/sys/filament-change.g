; filament-change.g
; called when a print from SD card is called a filament change (M600)
;
;unload the filament

M83            		; relative extruder moves
G1 E-10 F360 		; retract 10mm of filament
G91            		; relative positioning
G1 Z5 F360     		; lift Z by 5mm
G90            		; absolute positioning
G1 X0 Y0 F6000 		; go to X=0 Y=0
G1 E-100 F3600  	; retract 100mm of filament
M84 E0 			; Turn OFF extruder
M291 S3 R"Filament Change" P"Insert just the tip of new filament NOW!!!! then press OK"

;Load 

M83                  	; relative extruder moves
G1 E100 F3600         	; extrude 100mm of filament
G1 E20 F400           	; extrude 10mm of filament
G4 P1000 ; Wait one second
G1 E-10 F3600  		; retract 10mm of filament ready for RESUME
M400 ; Wait for moves to complete
M291 P"Filament Changed!!!" R"Wipe Nozzle" T5 ; Display message
M292 ; Hide the message
