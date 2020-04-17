; ### Duet3D Pressure Advance Calibration Pattern ###
; ---------------------------------------------------
;
; Settings Printer:
; Filament Diameter = 1.75 mm
; Nozzle Diameter = 0.4 mm
; Nozzle Temperature = 200 °C
; Bed Temperature = 60 °C
; Retraction Distance = firmware
; Layer Height = 0.2 mm
; Z-axis Offset = 0 mm
;
; Settings Print Bed:
; Bed Shape = Rect
; Bed Size X = 220 mm
; Bed Size Y = 210 mm
; Origin Bed Center = false
;
; Settings Speed:
; Slow Printing Speed = 1200 mm/min
; Fast Printing Speed = 4200 mm/min
; Movement Speed = 7200 mm/min
; Retract Speed = 2700 mm/min
; Printing Acceleration = 500 mm/s^2
; Jerk X-axis =  firmware default
; Jerk Y-axis =  firmware default
; Jerk Z-axis =  firmware default
; Jerk Extruder =  firmware default
;
; Settings Pattern:
; Starting Value Factor = 0
; Ending Value Factor = 0.3
; Factor Stepping = 0.01
; Test Line Spacing = 5 mm
; Test Line Length Slow = 20 mm
; Test Line Length Fast = 40 mm
; Print Pattern = Standard
; Print Frame = false
; Number Lines = true
; Print Size X = 98 mm
; Print Size Y = 175 mm
; Print Rotation = 0 degree
;
; Settings Advance:
; Nozzle / Line Ratio = 1.2
; Use BL = true
; Use FWRETRACT = true
; Extrusion Multiplier = 1
; Prime Nozzle = true
; Prime Extrusion Multiplier = 2.5
; Prime Speed = 1800
; Dwell Time = 2 s
;
; prepare printing
;
M104 S200 ; set nozzle temp and continue
M190 S60 ; set and wait for bed temp
M109 S200 ; block waiting for nozzle temp
;M98 P/MACROS/BLTOUCH/INIT
M98 P/SYS/HOMEALL.G
;M98 P/MACROS/IMPRESION/CAMA-NIVEL
;M98 P/MACROS/IMPRESION/PRE
M204 P500 ; set acceleration
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion
G92 E0 ; reset extruder distance
G1 X110 Y105 F7200 ; move to start
G1 Z0.2 F1200 ; move to layer height
;
; prime nozzle
;
G1 X61 Y17.5 F7200 ; move to start
G1 X61 Y192.5 E17.4616 F1800 ; print line
G1 X61.72 Y192.5 F7200 ; move to start
G1 X61.72 Y17.5 E17.4616 F1800 ; print line
G10 ; retract
;
; start the Test pattern
;
G4 P2000 ; Pause (dwell) for 2 seconds
G1 X71 Y17.5 F7200 ; move to start
M572 D0 S0 ; set pressure advance amount (s)
G11 ; un-retract
G1 X91 Y17.5 E0.7982 F1200 ; print line
G1 X131 Y17.5 E1.5965 F4200 ; print line
G1 X151 Y17.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X71 Y22.5 F7200 ; move to start
M572 D0 S0.01 ; set pressure advance amount (s)
G11 ; un-retract
G1 X91 Y22.5 E0.7982 F1200 ; print line
G1 X131 Y22.5 E1.5965 F4200 ; print line
G1 X151 Y22.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X71 Y27.5 F7200 ; move to start
M572 D0 S0.02 ; set pressure advance amount (s)
G11 ; un-retract
G1 X91 Y27.5 E0.7982 F1200 ; print line
G1 X131 Y27.5 E1.5965 F4200 ; print line
G1 X151 Y27.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X71 Y32.5 F7200 ; move to start
M572 D0 S0.03 ; set pressure advance amount (s)
G11 ; un-retract
G1 X91 Y32.5 E0.7982 F1200 ; print line
G1 X131 Y32.5 E1.5965 F4200 ; print line
G1 X151 Y32.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X71 Y37.5 F7200 ; move to start
M572 D0 S0.04 ; set pressure advance amount (s)
G11 ; un-retract
G1 X91 Y37.5 E0.7982 F1200 ; print line
G1 X131 Y37.5 E1.5965 F4200 ; print line
G1 X151 Y37.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X71 Y42.5 F7200 ; move to start
M572 D0 S0.05 ; set pressure advance amount (s)
G11 ; un-retract
G1 X91 Y42.5 E0.7982 F1200 ; print line
G1 X131 Y42.5 E1.5965 F4200 ; print line
G1 X151 Y42.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X71 Y47.5 F7200 ; move to start
M572 D0 S0.06 ; set pressure advance amount (s)
G11 ; un-retract
G1 X91 Y47.5 E0.7982 F1200 ; print line
G1 X131 Y47.5 E1.5965 F4200 ; print line
G1 X151 Y47.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X71 Y52.5 F7200 ; move to start
M572 D0 S0.07 ; set pressure advance amount (s)
G11 ; un-retract
G1 X91 Y52.5 E0.7982 F1200 ; print line
G1 X131 Y52.5 E1.5965 F4200 ; print line
G1 X151 Y52.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X71 Y57.5 F7200 ; move to start
M572 D0 S0.08 ; set pressure advance amount (s)
G11 ; un-retract
G1 X91 Y57.5 E0.7982 F1200 ; print line
G1 X131 Y57.5 E1.5965 F4200 ; print line
G1 X151 Y57.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X71 Y62.5 F7200 ; move to start
M572 D0 S0.09 ; set pressure advance amount (s)
G11 ; un-retract
G1 X91 Y62.5 E0.7982 F1200 ; print line
G1 X131 Y62.5 E1.5965 F4200 ; print line
G1 X151 Y62.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X71 Y67.5 F7200 ; move to start
M572 D0 S0.1 ; set pressure advance amount (s)
G11 ; un-retract
G1 X91 Y67.5 E0.7982 F1200 ; print line
G1 X131 Y67.5 E1.5965 F4200 ; print line
G1 X151 Y67.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X71 Y72.5 F7200 ; move to start
M572 D0 S0.11 ; set pressure advance amount (s)
G11 ; un-retract
G1 X91 Y72.5 E0.7982 F1200 ; print line
G1 X131 Y72.5 E1.5965 F4200 ; print line
G1 X151 Y72.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X71 Y77.5 F7200 ; move to start
M572 D0 S0.12 ; set pressure advance amount (s)
G11 ; un-retract
G1 X91 Y77.5 E0.7982 F1200 ; print line
G1 X131 Y77.5 E1.5965 F4200 ; print line
G1 X151 Y77.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X71 Y82.5 F7200 ; move to start
M572 D0 S0.13 ; set pressure advance amount (s)
G11 ; un-retract
G1 X91 Y82.5 E0.7982 F1200 ; print line
G1 X131 Y82.5 E1.5965 F4200 ; print line
G1 X151 Y82.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X71 Y87.5 F7200 ; move to start
M572 D0 S0.14 ; set pressure advance amount (s)
G11 ; un-retract
G1 X91 Y87.5 E0.7982 F1200 ; print line
G1 X131 Y87.5 E1.5965 F4200 ; print line
G1 X151 Y87.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X71 Y92.5 F7200 ; move to start
M572 D0 S0.15 ; set pressure advance amount (s)
G11 ; un-retract
G1 X91 Y92.5 E0.7982 F1200 ; print line
G1 X131 Y92.5 E1.5965 F4200 ; print line
G1 X151 Y92.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X71 Y97.5 F7200 ; move to start
M572 D0 S0.16 ; set pressure advance amount (s)
G11 ; un-retract
G1 X91 Y97.5 E0.7982 F1200 ; print line
G1 X131 Y97.5 E1.5965 F4200 ; print line
G1 X151 Y97.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X71 Y102.5 F7200 ; move to start
M572 D0 S0.17 ; set pressure advance amount (s)
G11 ; un-retract
G1 X91 Y102.5 E0.7982 F1200 ; print line
G1 X131 Y102.5 E1.5965 F4200 ; print line
G1 X151 Y102.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X71 Y107.5 F7200 ; move to start
M572 D0 S0.18 ; set pressure advance amount (s)
G11 ; un-retract
G1 X91 Y107.5 E0.7982 F1200 ; print line
G1 X131 Y107.5 E1.5965 F4200 ; print line
G1 X151 Y107.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X71 Y112.5 F7200 ; move to start
M572 D0 S0.19 ; set pressure advance amount (s)
G11 ; un-retract
G1 X91 Y112.5 E0.7982 F1200 ; print line
G1 X131 Y112.5 E1.5965 F4200 ; print line
G1 X151 Y112.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X71 Y117.5 F7200 ; move to start
M572 D0 S0.2 ; set pressure advance amount (s)
G11 ; un-retract
G1 X91 Y117.5 E0.7982 F1200 ; print line
G1 X131 Y117.5 E1.5965 F4200 ; print line
G1 X151 Y117.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X71 Y122.5 F7200 ; move to start
M572 D0 S0.21 ; set pressure advance amount (s)
G11 ; un-retract
G1 X91 Y122.5 E0.7982 F1200 ; print line
G1 X131 Y122.5 E1.5965 F4200 ; print line
G1 X151 Y122.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X71 Y127.5 F7200 ; move to start
M572 D0 S0.22 ; set pressure advance amount (s)
G11 ; un-retract
G1 X91 Y127.5 E0.7982 F1200 ; print line
G1 X131 Y127.5 E1.5965 F4200 ; print line
G1 X151 Y127.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X71 Y132.5 F7200 ; move to start
M572 D0 S0.23 ; set pressure advance amount (s)
G11 ; un-retract
G1 X91 Y132.5 E0.7982 F1200 ; print line
G1 X131 Y132.5 E1.5965 F4200 ; print line
G1 X151 Y132.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X71 Y137.5 F7200 ; move to start
M572 D0 S0.24 ; set pressure advance amount (s)
G11 ; un-retract
G1 X91 Y137.5 E0.7982 F1200 ; print line
G1 X131 Y137.5 E1.5965 F4200 ; print line
G1 X151 Y137.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X71 Y142.5 F7200 ; move to start
M572 D0 S0.25 ; set pressure advance amount (s)
G11 ; un-retract
G1 X91 Y142.5 E0.7982 F1200 ; print line
G1 X131 Y142.5 E1.5965 F4200 ; print line
G1 X151 Y142.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X71 Y147.5 F7200 ; move to start
M572 D0 S0.26 ; set pressure advance amount (s)
G11 ; un-retract
G1 X91 Y147.5 E0.7982 F1200 ; print line
G1 X131 Y147.5 E1.5965 F4200 ; print line
G1 X151 Y147.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X71 Y152.5 F7200 ; move to start
M572 D0 S0.27 ; set pressure advance amount (s)
G11 ; un-retract
G1 X91 Y152.5 E0.7982 F1200 ; print line
G1 X131 Y152.5 E1.5965 F4200 ; print line
G1 X151 Y152.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X71 Y157.5 F7200 ; move to start
M572 D0 S0.28 ; set pressure advance amount (s)
G11 ; un-retract
G1 X91 Y157.5 E0.7982 F1200 ; print line
G1 X131 Y157.5 E1.5965 F4200 ; print line
G1 X151 Y157.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X71 Y162.5 F7200 ; move to start
M572 D0 S0.29 ; set pressure advance amount (s)
G11 ; un-retract
G1 X91 Y162.5 E0.7982 F1200 ; print line
G1 X131 Y162.5 E1.5965 F4200 ; print line
G1 X151 Y162.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X71 Y167.5 F7200 ; move to start
;
; mark the test area for reference
;
M572 D0 S0 ; set pressure advance amount (s) 0
G1 X91 Y172.5 F7200 ; move to start
G11 ; un-retract
G1 X91 Y192.5 E0.7982 F1200 ; print line
G10 ; retract
G1 X131 Y172.5 F7200 ; move to start
G11 ; un-retract
G1 X131 Y192.5 E0.7982 F1200 ; print line
G10 ; retract
G1 Z0.3 F1200 ; zHop
;
; print K-values
;
G1 X153 Y15.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G11 ; un-retract
G1 X155 Y15.5 E0.0798 F1200 ; 0
G1 X155 Y17.5 E0.0798 F1200 ; 0
G1 X155 Y19.5 E0.0798 F1200 ; 0
G1 X153 Y19.5 E0.0798 F1200 ; 0
G1 X153 Y17.5 E0.0798 F1200 ; 0
G1 X153 Y15.5 E0.0798 F1200 ; 0
G10 ; retract
G1 Z0.3 F1200 ; zHop
G1 X153 Y25.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G11 ; un-retract
G1 X155 Y25.5 E0.0798 F1200 ; 0
G1 X155 Y27.5 E0.0798 F1200 ; 0
G1 X155 Y29.5 E0.0798 F1200 ; 0
G1 X153 Y29.5 E0.0798 F1200 ; 0
G1 X153 Y27.5 E0.0798 F1200 ; 0
G1 X153 Y25.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X156 Y25.5 F7200 ; move to start
G11 ; un-retract
G1 X156 Y25.9 E0.016 F1200 ; dot
G10 ; retract
G1 X157 Y25.5 F7200 ; move to start
G11 ; un-retract
G1 X159 Y25.5 E0.0798 F1200 ; 0
G1 X159 Y27.5 E0.0798 F1200 ; 0
G1 X159 Y29.5 E0.0798 F1200 ; 0
G1 X157 Y29.5 E0.0798 F1200 ; 0
G1 X157 Y27.5 E0.0798 F1200 ; 0
G1 X157 Y25.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X160 Y25.5 F7200 ; move to start
G11 ; un-retract
G1 X160 Y27.5 F7200 ; move to start
G1 X160 Y29.5 F7200 ; move to start
G1 X162 Y29.5 E0.0798 F1200 ; 2
G1 X162 Y27.5 E0.0798 F1200 ; 2
G1 X160 Y27.5 E0.0798 F1200 ; 2
G1 X160 Y25.5 E0.0798 F1200 ; 2
G1 X162 Y25.5 E0.0798 F1200 ; 2
G10 ; retract
G1 Z0.3 F1200 ; zHop
G1 X153 Y35.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G11 ; un-retract
G1 X155 Y35.5 E0.0798 F1200 ; 0
G1 X155 Y37.5 E0.0798 F1200 ; 0
G1 X155 Y39.5 E0.0798 F1200 ; 0
G1 X153 Y39.5 E0.0798 F1200 ; 0
G1 X153 Y37.5 E0.0798 F1200 ; 0
G1 X153 Y35.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X156 Y35.5 F7200 ; move to start
G11 ; un-retract
G1 X156 Y35.9 E0.016 F1200 ; dot
G10 ; retract
G1 X157 Y35.5 F7200 ; move to start
G11 ; un-retract
G1 X159 Y35.5 E0.0798 F1200 ; 0
G1 X159 Y37.5 E0.0798 F1200 ; 0
G1 X159 Y39.5 E0.0798 F1200 ; 0
G1 X157 Y39.5 E0.0798 F1200 ; 0
G1 X157 Y37.5 E0.0798 F1200 ; 0
G1 X157 Y35.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X160 Y35.5 F7200 ; move to start
G11 ; un-retract
G1 X160 Y37.5 F7200 ; move to start
G1 X160 Y39.5 F7200 ; move to start
G1 X160 Y37.5 E0.0798 F1200 ; 4
G1 X162 Y37.5 E0.0798 F1200 ; 4
G1 X162 Y39.5 F7200 ; move to start
G1 X162 Y37.5 E0.0798 F1200 ; 4
G1 X162 Y35.5 E0.0798 F1200 ; 4
G10 ; retract
G1 Z0.3 F1200 ; zHop
G1 X153 Y45.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G11 ; un-retract
G1 X155 Y45.5 E0.0798 F1200 ; 0
G1 X155 Y47.5 E0.0798 F1200 ; 0
G1 X155 Y49.5 E0.0798 F1200 ; 0
G1 X153 Y49.5 E0.0798 F1200 ; 0
G1 X153 Y47.5 E0.0798 F1200 ; 0
G1 X153 Y45.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X156 Y45.5 F7200 ; move to start
G11 ; un-retract
G1 X156 Y45.9 E0.016 F1200 ; dot
G10 ; retract
G1 X157 Y45.5 F7200 ; move to start
G11 ; un-retract
G1 X159 Y45.5 E0.0798 F1200 ; 0
G1 X159 Y47.5 E0.0798 F1200 ; 0
G1 X159 Y49.5 E0.0798 F1200 ; 0
G1 X157 Y49.5 E0.0798 F1200 ; 0
G1 X157 Y47.5 E0.0798 F1200 ; 0
G1 X157 Y45.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X160 Y45.5 F7200 ; move to start
G11 ; un-retract
G1 X160 Y47.5 F7200 ; move to start
G1 X162 Y47.5 E0.0798 F1200 ; 6
G1 X162 Y45.5 E0.0798 F1200 ; 6
G1 X160 Y45.5 E0.0798 F1200 ; 6
G1 X160 Y47.5 E0.0798 F1200 ; 6
G1 X160 Y49.5 E0.0798 F1200 ; 6
G1 X162 Y49.5 E0.0798 F1200 ; 6
G10 ; retract
G1 Z0.3 F1200 ; zHop
G1 X153 Y55.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G11 ; un-retract
G1 X155 Y55.5 E0.0798 F1200 ; 0
G1 X155 Y57.5 E0.0798 F1200 ; 0
G1 X155 Y59.5 E0.0798 F1200 ; 0
G1 X153 Y59.5 E0.0798 F1200 ; 0
G1 X153 Y57.5 E0.0798 F1200 ; 0
G1 X153 Y55.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X156 Y55.5 F7200 ; move to start
G11 ; un-retract
G1 X156 Y55.9 E0.016 F1200 ; dot
G10 ; retract
G1 X157 Y55.5 F7200 ; move to start
G11 ; un-retract
G1 X159 Y55.5 E0.0798 F1200 ; 0
G1 X159 Y57.5 E0.0798 F1200 ; 0
G1 X159 Y59.5 E0.0798 F1200 ; 0
G1 X157 Y59.5 E0.0798 F1200 ; 0
G1 X157 Y57.5 E0.0798 F1200 ; 0
G1 X157 Y55.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X160 Y55.5 F7200 ; move to start
G11 ; un-retract
G1 X160 Y57.5 F7200 ; move to start
G1 X162 Y57.5 E0.0798 F1200 ; 8
G1 X162 Y55.5 E0.0798 F1200 ; 8
G1 X160 Y55.5 E0.0798 F1200 ; 8
G1 X160 Y57.5 E0.0798 F1200 ; 8
G1 X160 Y59.5 E0.0798 F1200 ; 8
G1 X162 Y59.5 E0.0798 F1200 ; 8
G1 X162 Y57.5 E0.0798 F1200 ; 8
G10 ; retract
G1 Z0.3 F1200 ; zHop
G1 X153 Y65.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G11 ; un-retract
G1 X155 Y65.5 E0.0798 F1200 ; 0
G1 X155 Y67.5 E0.0798 F1200 ; 0
G1 X155 Y69.5 E0.0798 F1200 ; 0
G1 X153 Y69.5 E0.0798 F1200 ; 0
G1 X153 Y67.5 E0.0798 F1200 ; 0
G1 X153 Y65.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X156 Y65.5 F7200 ; move to start
G11 ; un-retract
G1 X156 Y65.9 E0.016 F1200 ; dot
G10 ; retract
G1 X157 Y65.5 F7200 ; move to start
G11 ; un-retract
G1 X157 Y67.5 E0.0798 F1200 ; 1
G1 X157 Y69.5 E0.0798 F1200 ; 1
G10 ; retract
G1 Z0.3 F1200 ; zHop
G1 X153 Y75.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G11 ; un-retract
G1 X155 Y75.5 E0.0798 F1200 ; 0
G1 X155 Y77.5 E0.0798 F1200 ; 0
G1 X155 Y79.5 E0.0798 F1200 ; 0
G1 X153 Y79.5 E0.0798 F1200 ; 0
G1 X153 Y77.5 E0.0798 F1200 ; 0
G1 X153 Y75.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X156 Y75.5 F7200 ; move to start
G11 ; un-retract
G1 X156 Y75.9 E0.016 F1200 ; dot
G10 ; retract
G1 X157 Y75.5 F7200 ; move to start
G11 ; un-retract
G1 X157 Y77.5 E0.0798 F1200 ; 1
G1 X157 Y79.5 E0.0798 F1200 ; 1
G10 ; retract
G1 X158 Y75.5 F7200 ; move to start
G11 ; un-retract
G1 X158 Y77.5 F7200 ; move to start
G1 X158 Y79.5 F7200 ; move to start
G1 X160 Y79.5 E0.0798 F1200 ; 2
G1 X160 Y77.5 E0.0798 F1200 ; 2
G1 X158 Y77.5 E0.0798 F1200 ; 2
G1 X158 Y75.5 E0.0798 F1200 ; 2
G1 X160 Y75.5 E0.0798 F1200 ; 2
G10 ; retract
G1 Z0.3 F1200 ; zHop
G1 X153 Y85.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G11 ; un-retract
G1 X155 Y85.5 E0.0798 F1200 ; 0
G1 X155 Y87.5 E0.0798 F1200 ; 0
G1 X155 Y89.5 E0.0798 F1200 ; 0
G1 X153 Y89.5 E0.0798 F1200 ; 0
G1 X153 Y87.5 E0.0798 F1200 ; 0
G1 X153 Y85.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X156 Y85.5 F7200 ; move to start
G11 ; un-retract
G1 X156 Y85.9 E0.016 F1200 ; dot
G10 ; retract
G1 X157 Y85.5 F7200 ; move to start
G11 ; un-retract
G1 X157 Y87.5 E0.0798 F1200 ; 1
G1 X157 Y89.5 E0.0798 F1200 ; 1
G10 ; retract
G1 X158 Y85.5 F7200 ; move to start
G11 ; un-retract
G1 X158 Y87.5 F7200 ; move to start
G1 X158 Y89.5 F7200 ; move to start
G1 X158 Y87.5 E0.0798 F1200 ; 4
G1 X160 Y87.5 E0.0798 F1200 ; 4
G1 X160 Y89.5 F7200 ; move to start
G1 X160 Y87.5 E0.0798 F1200 ; 4
G1 X160 Y85.5 E0.0798 F1200 ; 4
G10 ; retract
G1 Z0.3 F1200 ; zHop
G1 X153 Y95.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G11 ; un-retract
G1 X155 Y95.5 E0.0798 F1200 ; 0
G1 X155 Y97.5 E0.0798 F1200 ; 0
G1 X155 Y99.5 E0.0798 F1200 ; 0
G1 X153 Y99.5 E0.0798 F1200 ; 0
G1 X153 Y97.5 E0.0798 F1200 ; 0
G1 X153 Y95.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X156 Y95.5 F7200 ; move to start
G11 ; un-retract
G1 X156 Y95.9 E0.016 F1200 ; dot
G10 ; retract
G1 X157 Y95.5 F7200 ; move to start
G11 ; un-retract
G1 X157 Y97.5 E0.0798 F1200 ; 1
G1 X157 Y99.5 E0.0798 F1200 ; 1
G10 ; retract
G1 X158 Y95.5 F7200 ; move to start
G11 ; un-retract
G1 X158 Y97.5 F7200 ; move to start
G1 X160 Y97.5 E0.0798 F1200 ; 6
G1 X160 Y95.5 E0.0798 F1200 ; 6
G1 X158 Y95.5 E0.0798 F1200 ; 6
G1 X158 Y97.5 E0.0798 F1200 ; 6
G1 X158 Y99.5 E0.0798 F1200 ; 6
G1 X160 Y99.5 E0.0798 F1200 ; 6
G10 ; retract
G1 Z0.3 F1200 ; zHop
G1 X153 Y105.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G11 ; un-retract
G1 X155 Y105.5 E0.0798 F1200 ; 0
G1 X155 Y107.5 E0.0798 F1200 ; 0
G1 X155 Y109.5 E0.0798 F1200 ; 0
G1 X153 Y109.5 E0.0798 F1200 ; 0
G1 X153 Y107.5 E0.0798 F1200 ; 0
G1 X153 Y105.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X156 Y105.5 F7200 ; move to start
G11 ; un-retract
G1 X156 Y105.9 E0.016 F1200 ; dot
G10 ; retract
G1 X157 Y105.5 F7200 ; move to start
G11 ; un-retract
G1 X157 Y107.5 E0.0798 F1200 ; 1
G1 X157 Y109.5 E0.0798 F1200 ; 1
G10 ; retract
G1 X158 Y105.5 F7200 ; move to start
G11 ; un-retract
G1 X158 Y107.5 F7200 ; move to start
G1 X160 Y107.5 E0.0798 F1200 ; 8
G1 X160 Y105.5 E0.0798 F1200 ; 8
G1 X158 Y105.5 E0.0798 F1200 ; 8
G1 X158 Y107.5 E0.0798 F1200 ; 8
G1 X158 Y109.5 E0.0798 F1200 ; 8
G1 X160 Y109.5 E0.0798 F1200 ; 8
G1 X160 Y107.5 E0.0798 F1200 ; 8
G10 ; retract
G1 Z0.3 F1200 ; zHop
G1 X153 Y115.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G11 ; un-retract
G1 X155 Y115.5 E0.0798 F1200 ; 0
G1 X155 Y117.5 E0.0798 F1200 ; 0
G1 X155 Y119.5 E0.0798 F1200 ; 0
G1 X153 Y119.5 E0.0798 F1200 ; 0
G1 X153 Y117.5 E0.0798 F1200 ; 0
G1 X153 Y115.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X156 Y115.5 F7200 ; move to start
G11 ; un-retract
G1 X156 Y115.9 E0.016 F1200 ; dot
G10 ; retract
G1 X157 Y115.5 F7200 ; move to start
G11 ; un-retract
G1 X157 Y117.5 F7200 ; move to start
G1 X157 Y119.5 F7200 ; move to start
G1 X159 Y119.5 E0.0798 F1200 ; 2
G1 X159 Y117.5 E0.0798 F1200 ; 2
G1 X157 Y117.5 E0.0798 F1200 ; 2
G1 X157 Y115.5 E0.0798 F1200 ; 2
G1 X159 Y115.5 E0.0798 F1200 ; 2
G10 ; retract
G1 Z0.3 F1200 ; zHop
G1 X153 Y125.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G11 ; un-retract
G1 X155 Y125.5 E0.0798 F1200 ; 0
G1 X155 Y127.5 E0.0798 F1200 ; 0
G1 X155 Y129.5 E0.0798 F1200 ; 0
G1 X153 Y129.5 E0.0798 F1200 ; 0
G1 X153 Y127.5 E0.0798 F1200 ; 0
G1 X153 Y125.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X156 Y125.5 F7200 ; move to start
G11 ; un-retract
G1 X156 Y125.9 E0.016 F1200 ; dot
G10 ; retract
G1 X157 Y125.5 F7200 ; move to start
G11 ; un-retract
G1 X157 Y127.5 F7200 ; move to start
G1 X157 Y129.5 F7200 ; move to start
G1 X159 Y129.5 E0.0798 F1200 ; 2
G1 X159 Y127.5 E0.0798 F1200 ; 2
G1 X157 Y127.5 E0.0798 F1200 ; 2
G1 X157 Y125.5 E0.0798 F1200 ; 2
G1 X159 Y125.5 E0.0798 F1200 ; 2
G10 ; retract
G1 X160 Y125.5 F7200 ; move to start
G11 ; un-retract
G1 X160 Y127.5 F7200 ; move to start
G1 X160 Y129.5 F7200 ; move to start
G1 X162 Y129.5 E0.0798 F1200 ; 2
G1 X162 Y127.5 E0.0798 F1200 ; 2
G1 X160 Y127.5 E0.0798 F1200 ; 2
G1 X160 Y125.5 E0.0798 F1200 ; 2
G1 X162 Y125.5 E0.0798 F1200 ; 2
G10 ; retract
G1 Z0.3 F1200 ; zHop
G1 X153 Y135.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G11 ; un-retract
G1 X155 Y135.5 E0.0798 F1200 ; 0
G1 X155 Y137.5 E0.0798 F1200 ; 0
G1 X155 Y139.5 E0.0798 F1200 ; 0
G1 X153 Y139.5 E0.0798 F1200 ; 0
G1 X153 Y137.5 E0.0798 F1200 ; 0
G1 X153 Y135.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X156 Y135.5 F7200 ; move to start
G11 ; un-retract
G1 X156 Y135.9 E0.016 F1200 ; dot
G10 ; retract
G1 X157 Y135.5 F7200 ; move to start
G11 ; un-retract
G1 X157 Y137.5 F7200 ; move to start
G1 X157 Y139.5 F7200 ; move to start
G1 X159 Y139.5 E0.0798 F1200 ; 2
G1 X159 Y137.5 E0.0798 F1200 ; 2
G1 X157 Y137.5 E0.0798 F1200 ; 2
G1 X157 Y135.5 E0.0798 F1200 ; 2
G1 X159 Y135.5 E0.0798 F1200 ; 2
G10 ; retract
G1 X160 Y135.5 F7200 ; move to start
G11 ; un-retract
G1 X160 Y137.5 F7200 ; move to start
G1 X160 Y139.5 F7200 ; move to start
G1 X160 Y137.5 E0.0798 F1200 ; 4
G1 X162 Y137.5 E0.0798 F1200 ; 4
G1 X162 Y139.5 F7200 ; move to start
G1 X162 Y137.5 E0.0798 F1200 ; 4
G1 X162 Y135.5 E0.0798 F1200 ; 4
G10 ; retract
G1 Z0.3 F1200 ; zHop
G1 X153 Y145.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G11 ; un-retract
G1 X155 Y145.5 E0.0798 F1200 ; 0
G1 X155 Y147.5 E0.0798 F1200 ; 0
G1 X155 Y149.5 E0.0798 F1200 ; 0
G1 X153 Y149.5 E0.0798 F1200 ; 0
G1 X153 Y147.5 E0.0798 F1200 ; 0
G1 X153 Y145.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X156 Y145.5 F7200 ; move to start
G11 ; un-retract
G1 X156 Y145.9 E0.016 F1200 ; dot
G10 ; retract
G1 X157 Y145.5 F7200 ; move to start
G11 ; un-retract
G1 X157 Y147.5 F7200 ; move to start
G1 X157 Y149.5 F7200 ; move to start
G1 X159 Y149.5 E0.0798 F1200 ; 2
G1 X159 Y147.5 E0.0798 F1200 ; 2
G1 X157 Y147.5 E0.0798 F1200 ; 2
G1 X157 Y145.5 E0.0798 F1200 ; 2
G1 X159 Y145.5 E0.0798 F1200 ; 2
G10 ; retract
G1 X160 Y145.5 F7200 ; move to start
G11 ; un-retract
G1 X160 Y147.5 F7200 ; move to start
G1 X162 Y147.5 E0.0798 F1200 ; 6
G1 X162 Y145.5 E0.0798 F1200 ; 6
G1 X160 Y145.5 E0.0798 F1200 ; 6
G1 X160 Y147.5 E0.0798 F1200 ; 6
G1 X160 Y149.5 E0.0798 F1200 ; 6
G1 X162 Y149.5 E0.0798 F1200 ; 6
G10 ; retract
G1 Z0.3 F1200 ; zHop
G1 X153 Y155.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G11 ; un-retract
G1 X155 Y155.5 E0.0798 F1200 ; 0
G1 X155 Y157.5 E0.0798 F1200 ; 0
G1 X155 Y159.5 E0.0798 F1200 ; 0
G1 X153 Y159.5 E0.0798 F1200 ; 0
G1 X153 Y157.5 E0.0798 F1200 ; 0
G1 X153 Y155.5 E0.0798 F1200 ; 0
G10 ; retract
G1 X156 Y155.5 F7200 ; move to start
G11 ; un-retract
G1 X156 Y155.9 E0.016 F1200 ; dot
G10 ; retract
G1 X157 Y155.5 F7200 ; move to start
G11 ; un-retract
G1 X157 Y157.5 F7200 ; move to start
G1 X157 Y159.5 F7200 ; move to start
G1 X159 Y159.5 E0.0798 F1200 ; 2
G1 X159 Y157.5 E0.0798 F1200 ; 2
G1 X157 Y157.5 E0.0798 F1200 ; 2
G1 X157 Y155.5 E0.0798 F1200 ; 2
G1 X159 Y155.5 E0.0798 F1200 ; 2
G10 ; retract
G1 X160 Y155.5 F7200 ; move to start
G11 ; un-retract
G1 X160 Y157.5 F7200 ; move to start
G1 X162 Y157.5 E0.0798 F1200 ; 8
G1 X162 Y155.5 E0.0798 F1200 ; 8
G1 X160 Y155.5 E0.0798 F1200 ; 8
G1 X160 Y157.5 E0.0798 F1200 ; 8
G1 X160 Y159.5 E0.0798 F1200 ; 8
G1 X162 Y159.5 E0.0798 F1200 ; 8
G1 X162 Y157.5 E0.0798 F1200 ; 8
G10 ; retract
G1 Z0.3 F1200 ; zHop
;
; finish
;
;M98 P/MACROS/IMPRESION/POST
