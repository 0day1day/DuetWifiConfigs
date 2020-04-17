; ### Marlin K-Factor Calibration Pattern ###
; -------------------------------------------
;
; Created: Wed Apr 24 2019 16:05:50 GMT+0200 (hora de verano de Europa central)
;
; Settings Printer:
; Filament Diameter = 1.75 mm
; Nozzle Diameter = 0.4 mm
; Nozzle Temperature = 205 °C
; Bed Temperature = 60 °C
; Retraction Distance = 5 mm
; Layer Height = 0.2 mm
; Z-axis Offset = 0 mm
;
; Settings Print Bed:
; Bed Shape = Round
; Bed Diameter = 220 mm
; Origin Bed Center = true
;
; Settings Speed:
; Slow Printing Speed = 1200 mm/min
; Fast Printing Speed = 4200 mm/min
; Movement Speed = 7200 mm/min
; Retract Speed = 1800 mm/min
; Printing Acceleration = 500 mm/s^2
; Jerk X-axis =  firmware default
; Jerk Y-axis =  firmware default
; Jerk Z-axis =  firmware default
; Jerk Extruder =  firmware default
;
; Settings Pattern:
; Linear Advance Version = 1.5
; Starting Value Factor = 0.3
; Ending Value Factor = 0.8
; Factor Stepping = 0.05
; Test Line Spacing = 3 mm
; Test Line Length Slow = 20 mm
; Test Line Length Fast = 40 mm
; Print Pattern = Standard
; Print Frame = false
; Number Lines = true
; Print Size X = 98 mm
; Print Size Y = 55 mm
; Print Rotation = 0 degree
;
; Settings Advance:
; Nozzle / Line Ratio = 1.2
; Bed leveling = 0
; Use FWRETRACT = false
; Extrusion Multiplier = 1
; Prime Nozzle = true
; Prime Extrusion Multiplier = 2.5
; Prime Speed = 1800
; Dwell Time = 2 s
;
; prepare printing
;
M104 S205 ; set nozzle temperature but do not wait
M190 S60 ; set bed temperature and wait
M109 S205 ; block waiting for nozzle temp
G28 ; home all axes with heated bed
G21 ; set units to millimeters
M204 P500 ; set acceleration
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion
G92 E0 ; reset extruder distance
G1 X0 Y0 F7200 ; move to start
G1 Z0.2 F1200 ; move to layer height
;
; prime nozzle
;
G1 X-49 Y-27.5 F7200 ; move to start
G1 X-49 Y27.5 E5.4879 F1800 ; print line
G1 X-48.28 Y27.5 F7200 ; move to start
G1 X-48.28 Y-27.5 E5.4879 F1800 ; print line
G1 E-5 F1800 ; retract
;
; start the Test pattern
;
G4 P2000 ; Pause (dwell) for 2 seconds
G1 X-39 Y-27.5 F7200 ; move to start
M572 D0 S0.3 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-27.5 E0.7982 F1200 ; print line
G1 X21 Y-27.5 E1.5965 F4200 ; print line
G1 X41 Y-27.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-24.5 F7200 ; move to start
M572 D0 S0.35 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-24.5 E0.7982 F1200 ; print line
G1 X21 Y-24.5 E1.5965 F4200 ; print line
G1 X41 Y-24.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-21.5 F7200 ; move to start
M572 D0 S0.4 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-21.5 E0.7982 F1200 ; print line
G1 X21 Y-21.5 E1.5965 F4200 ; print line
G1 X41 Y-21.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-18.5 F7200 ; move to start
M572 D0 S0.45 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-18.5 E0.7982 F1200 ; print line
G1 X21 Y-18.5 E1.5965 F4200 ; print line
G1 X41 Y-18.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-15.5 F7200 ; move to start
M572 D0 S0.5 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-15.5 E0.7982 F1200 ; print line
G1 X21 Y-15.5 E1.5965 F4200 ; print line
G1 X41 Y-15.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-12.5 F7200 ; move to start
M572 D0 S0.55 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-12.5 E0.7982 F1200 ; print line
G1 X21 Y-12.5 E1.5965 F4200 ; print line
G1 X41 Y-12.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-9.5 F7200 ; move to start
M572 D0 S0.6 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-9.5 E0.7982 F1200 ; print line
G1 X21 Y-9.5 E1.5965 F4200 ; print line
G1 X41 Y-9.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-6.5 F7200 ; move to start
M572 D0 S0.65 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-6.5 E0.7982 F1200 ; print line
G1 X21 Y-6.5 E1.5965 F4200 ; print line
G1 X41 Y-6.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-3.5 F7200 ; move to start
M572 D0 S0.7 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-3.5 E0.7982 F1200 ; print line
G1 X21 Y-3.5 E1.5965 F4200 ; print line
G1 X41 Y-3.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-0.5 F7200 ; move to start
M572 D0 S0.75 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-0.5 E0.7982 F1200 ; print line
G1 X21 Y-0.5 E1.5965 F4200 ; print line
G1 X41 Y-0.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y2.5 F7200 ; move to start
;
; mark the test area for reference
;
M572 D0 S0 ; set K-factor 0
G1 X-19 Y7.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X-19 Y27.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X21 Y7.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X21 Y27.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
;
; print K-values
;
G1 X43 Y-29.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X45 Y-29.5 E0.0798 F1200 ; 0
G1 X45 Y-27.5 E0.0798 F1200 ; 0
G1 X45 Y-25.5 E0.0798 F1200 ; 0
G1 X43 Y-25.5 E0.0798 F1200 ; 0
G1 X43 Y-27.5 E0.0798 F1200 ; 0
G1 X43 Y-29.5 E0.0798 F1200 ; 0
G1 E-5 F1800 ; retract
G1 X46 Y-29.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X46 Y-29.1 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X47 Y-29.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X47 Y-27.5 F7200 ; move to start
G1 X47 Y-25.5 F7200 ; move to start
G1 X49 Y-25.5 E0.0798 F1200 ; 3
G1 X49 Y-27.5 E0.0798 F1200 ; 3
G1 X49 Y-29.5 E0.0798 F1200 ; 3
G1 X47 Y-29.5 E0.0798 F1200 ; 3
G1 X47 Y-27.5 F7200 ; move to start
G1 X49 Y-27.5 E0.0798 F1200 ; 3
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y-23.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X45 Y-23.5 E0.0798 F1200 ; 0
G1 X45 Y-21.5 E0.0798 F1200 ; 0
G1 X45 Y-19.5 E0.0798 F1200 ; 0
G1 X43 Y-19.5 E0.0798 F1200 ; 0
G1 X43 Y-21.5 E0.0798 F1200 ; 0
G1 X43 Y-23.5 E0.0798 F1200 ; 0
G1 E-5 F1800 ; retract
G1 X46 Y-23.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X46 Y-23.1 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X47 Y-23.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X47 Y-21.5 F7200 ; move to start
G1 X47 Y-19.5 F7200 ; move to start
G1 X47 Y-21.5 E0.0798 F1200 ; 4
G1 X49 Y-21.5 E0.0798 F1200 ; 4
G1 X49 Y-19.5 F7200 ; move to start
G1 X49 Y-21.5 E0.0798 F1200 ; 4
G1 X49 Y-23.5 E0.0798 F1200 ; 4
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y-17.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X45 Y-17.5 E0.0798 F1200 ; 0
G1 X45 Y-15.5 E0.0798 F1200 ; 0
G1 X45 Y-13.5 E0.0798 F1200 ; 0
G1 X43 Y-13.5 E0.0798 F1200 ; 0
G1 X43 Y-15.5 E0.0798 F1200 ; 0
G1 X43 Y-17.5 E0.0798 F1200 ; 0
G1 E-5 F1800 ; retract
G1 X46 Y-17.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X46 Y-17.1 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X47 Y-17.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X49 Y-17.5 E0.0798 F1200 ; 5
G1 X49 Y-15.5 E0.0798 F1200 ; 5
G1 X47 Y-15.5 E0.0798 F1200 ; 5
G1 X47 Y-13.5 E0.0798 F1200 ; 5
G1 X49 Y-13.5 E0.0798 F1200 ; 5
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y-11.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X45 Y-11.5 E0.0798 F1200 ; 0
G1 X45 Y-9.5 E0.0798 F1200 ; 0
G1 X45 Y-7.5 E0.0798 F1200 ; 0
G1 X43 Y-7.5 E0.0798 F1200 ; 0
G1 X43 Y-9.5 E0.0798 F1200 ; 0
G1 X43 Y-11.5 E0.0798 F1200 ; 0
G1 E-5 F1800 ; retract
G1 X46 Y-11.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X46 Y-11.1 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X47 Y-11.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X47 Y-9.5 F7200 ; move to start
G1 X49 Y-9.5 E0.0798 F1200 ; 6
G1 X49 Y-11.5 E0.0798 F1200 ; 6
G1 X47 Y-11.5 E0.0798 F1200 ; 6
G1 X47 Y-9.5 E0.0798 F1200 ; 6
G1 X47 Y-7.5 E0.0798 F1200 ; 6
G1 X49 Y-7.5 E0.0798 F1200 ; 6
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y-5.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X45 Y-5.5 E0.0798 F1200 ; 0
G1 X45 Y-3.5 E0.0798 F1200 ; 0
G1 X45 Y-1.5 E0.0798 F1200 ; 0
G1 X43 Y-1.5 E0.0798 F1200 ; 0
G1 X43 Y-3.5 E0.0798 F1200 ; 0
G1 X43 Y-5.5 E0.0798 F1200 ; 0
G1 E-5 F1800 ; retract
G1 X46 Y-5.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X46 Y-5.1 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X47 Y-5.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X47 Y-3.5 F7200 ; move to start
G1 X47 Y-1.5 F7200 ; move to start
G1 X49 Y-1.5 E0.0798 F1200 ; 7
G1 X49 Y-3.5 E0.0798 F1200 ; 7
G1 X49 Y-5.5 E0.0798 F1200 ; 7
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
;
; finish
;
M104 S0 ; turn off hotend
M140 S0 ; turn off bed
G1 Z30 X0 Y0 F7200 ; move away from the print
M84 ; disable motors
M502 ; resets parameters from ROM
M501 ; resets parameters from EEPROM
;