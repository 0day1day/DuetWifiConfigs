M291 P"Espera a que la boquilla alcance la temperatura" R"Cargando PLA" T5 ; Display message
G10 S200 ; Set current tool temperature to 200C
M116 ; Wait for the temperatures to be reached
M291 P"Alimentando filamento" R"PLA" T5 ; Display new message
G1 E10 F600 ; Feed 10mm of filament at 600mm/min
G1 E470 F3000 ; Feed 470mm of filament at 3000mm/min
G1 E20 F200 ; Feed 20mm of filament at 300mm/min
G4 P1000 ; Wait one second
G1 E-10 F1800 ; Retract 10mm of filament at 1800mm/min
M400 ; Wait for moves to complete
M292 ; Hide the message
;G10 S0 ; Turn off the heater again