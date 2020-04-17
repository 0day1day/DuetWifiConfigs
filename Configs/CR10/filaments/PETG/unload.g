M291 P"Espera a que la boquilla alcance la temperatura" R"Descargando PETG" T5 ; Display message
G10 S230 ; Heat up the current tool to 230C
M116 ; Wait for the temperatures to be reached
M291 P"Retrayendo filamento..." R"Descargando PETG" T5 ; Display another message
G1 E20 F300 ;Load 20mm of filament at 300mm/min
G1 E-20 F300 ; Retract 20mm of filament at 300mm/min
G1 E-480 F3000 ; Retract 480mm of filament at 3000mm/min
M400 ; Wait for the moves to finish
M292 ; Hide the message again
M84 E0:1 ; Turn off extruder drives 1 and 2