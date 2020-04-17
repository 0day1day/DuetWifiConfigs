; ### Marlin K-Factor Calibration Pattern ###
; -------------------------------------------
;
; Created: Wed Apr 24 2019 11:23:39 GMT+0200 (hora de verano de Europa central)
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
; Starting Value Factor = 0
; Ending Value Factor = 3
; Factor Stepping = 0.1
; Test Line Spacing = 3 mm
; Test Line Length Slow = 20 mm
; Test Line Length Fast = 40 mm
; Print Pattern = Standard
; Print Frame = false
; Number Lines = true
; Print Size X = 98 mm
; Print Size Y = 115 mm
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
G1 X-49 Y-57.5 F7200 ; move to start
G1 X-49 Y57.5 E11.4747 F1800 ; print line
G1 X-48.28 Y57.5 F7200 ; move to start
G1 X-48.28 Y-57.5 E11.4747 F1800 ; print line
G1 E-5 F1800 ; retract
;
; start the Test pattern
;
G4 P2000 ; Pause (dwell) for 2 seconds
G1 X-39 Y-57.5 F7200 ; move to start
M572 D0 S0 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-57.5 E0.7982 F1200 ; print line
G1 X21 Y-57.5 E1.5965 F4200 ; print line
G1 X41 Y-57.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-54.5 F7200 ; move to start
M572 D0 S0.1 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-54.5 E0.7982 F1200 ; print line
G1 X21 Y-54.5 E1.5965 F4200 ; print line
G1 X41 Y-54.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-51.5 F7200 ; move to start
M572 D0 S0.2 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-51.5 E0.7982 F1200 ; print line
G1 X21 Y-51.5 E1.5965 F4200 ; print line
G1 X41 Y-51.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-48.5 F7200 ; move to start
M572 D0 S0.3 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-48.5 E0.7982 F1200 ; print line
G1 X21 Y-48.5 E1.5965 F4200 ; print line
G1 X41 Y-48.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-45.5 F7200 ; move to start
M572 D0 S0.4 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-45.5 E0.7982 F1200 ; print line
G1 X21 Y-45.5 E1.5965 F4200 ; print line
G1 X41 Y-45.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-42.5 F7200 ; move to start
M572 D0 S0.5 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-42.5 E0.7982 F1200 ; print line
G1 X21 Y-42.5 E1.5965 F4200 ; print line
G1 X41 Y-42.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-39.5 F7200 ; move to start
M572 D0 S0.6 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-39.5 E0.7982 F1200 ; print line
G1 X21 Y-39.5 E1.5965 F4200 ; print line
G1 X41 Y-39.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-36.5 F7200 ; move to start
M572 D0 S0.7 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-36.5 E0.7982 F1200 ; print line
G1 X21 Y-36.5 E1.5965 F4200 ; print line
G1 X41 Y-36.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-33.5 F7200 ; move to start
M572 D0 S0.8 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-33.5 E0.7982 F1200 ; print line
G1 X21 Y-33.5 E1.5965 F4200 ; print line
G1 X41 Y-33.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-30.5 F7200 ; move to start
M572 D0 S0.9 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-30.5 E0.7982 F1200 ; print line
G1 X21 Y-30.5 E1.5965 F4200 ; print line
G1 X41 Y-30.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-27.5 F7200 ; move to start
M572 D0 S1 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-27.5 E0.7982 F1200 ; print line
G1 X21 Y-27.5 E1.5965 F4200 ; print line
G1 X41 Y-27.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-24.5 F7200 ; move to start
M572 D0 S1.1 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-24.5 E0.7982 F1200 ; print line
G1 X21 Y-24.5 E1.5965 F4200 ; print line
G1 X41 Y-24.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-21.5 F7200 ; move to start
M572 D0 S1.2 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-21.5 E0.7982 F1200 ; print line
G1 X21 Y-21.5 E1.5965 F4200 ; print line
G1 X41 Y-21.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-18.5 F7200 ; move to start
M572 D0 S1.3 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-18.5 E0.7982 F1200 ; print line
G1 X21 Y-18.5 E1.5965 F4200 ; print line
G1 X41 Y-18.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-15.5 F7200 ; move to start
M572 D0 S1.4 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-15.5 E0.7982 F1200 ; print line
G1 X21 Y-15.5 E1.5965 F4200 ; print line
G1 X41 Y-15.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-12.5 F7200 ; move to start
M572 D0 S1.5 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-12.5 E0.7982 F1200 ; print line
G1 X21 Y-12.5 E1.5965 F4200 ; print line
G1 X41 Y-12.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-9.5 F7200 ; move to start
M572 D0 S1.6 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-9.5 E0.7982 F1200 ; print line
G1 X21 Y-9.5 E1.5965 F4200 ; print line
G1 X41 Y-9.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-6.5 F7200 ; move to start
M572 D0 S1.7 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-6.5 E0.7982 F1200 ; print line
G1 X21 Y-6.5 E1.5965 F4200 ; print line
G1 X41 Y-6.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-3.5 F7200 ; move to start
M572 D0 S1.8 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-3.5 E0.7982 F1200 ; print line
G1 X21 Y-3.5 E1.5965 F4200 ; print line
G1 X41 Y-3.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-0.5 F7200 ; move to start
M572 D0 S1.9 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-0.5 E0.7982 F1200 ; print line
G1 X21 Y-0.5 E1.5965 F4200 ; print line
G1 X41 Y-0.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y2.5 F7200 ; move to start
M572 D0 S2 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y2.5 E0.7982 F1200 ; print line
G1 X21 Y2.5 E1.5965 F4200 ; print line
G1 X41 Y2.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y5.5 F7200 ; move to start
M572 D0 S2.1 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y5.5 E0.7982 F1200 ; print line
G1 X21 Y5.5 E1.5965 F4200 ; print line
G1 X41 Y5.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y8.5 F7200 ; move to start
M572 D0 S2.2 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y8.5 E0.7982 F1200 ; print line
G1 X21 Y8.5 E1.5965 F4200 ; print line
G1 X41 Y8.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y11.5 F7200 ; move to start
M572 D0 S2.3 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y11.5 E0.7982 F1200 ; print line
G1 X21 Y11.5 E1.5965 F4200 ; print line
G1 X41 Y11.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y14.5 F7200 ; move to start
M572 D0 S2.4 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y14.5 E0.7982 F1200 ; print line
G1 X21 Y14.5 E1.5965 F4200 ; print line
G1 X41 Y14.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y17.5 F7200 ; move to start
M572 D0 S2.5 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y17.5 E0.7982 F1200 ; print line
G1 X21 Y17.5 E1.5965 F4200 ; print line
G1 X41 Y17.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y20.5 F7200 ; move to start
M572 D0 S2.6 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y20.5 E0.7982 F1200 ; print line
G1 X21 Y20.5 E1.5965 F4200 ; print line
G1 X41 Y20.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y23.5 F7200 ; move to start
M572 D0 S2.7 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y23.5 E0.7982 F1200 ; print line
G1 X21 Y23.5 E1.5965 F4200 ; print line
G1 X41 Y23.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y26.5 F7200 ; move to start
M572 D0 S2.8 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y26.5 E0.7982 F1200 ; print line
G1 X21 Y26.5 E1.5965 F4200 ; print line
G1 X41 Y26.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y29.5 F7200 ; move to start
M572 D0 S2.9 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y29.5 E0.7982 F1200 ; print line
G1 X21 Y29.5 E1.5965 F4200 ; print line
G1 X41 Y29.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y32.5 F7200 ; move to start
;
; mark the test area for reference
;
M572 D0 S0 ; set K-factor 0
G1 X-19 Y37.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X-19 Y57.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X21 Y37.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X21 Y57.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
;
; print K-values
;
G1 X43 Y-59.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X45 Y-59.5 E0.0798 F1200 ; 0
G1 X45 Y-57.5 E0.0798 F1200 ; 0
G1 X45 Y-55.5 E0.0798 F1200 ; 0
G1 X43 Y-55.5 E0.0798 F1200 ; 0
G1 X43 Y-57.5 E0.0798 F1200 ; 0
G1 X43 Y-59.5 E0.0798 F1200 ; 0
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y-53.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X45 Y-53.5 E0.0798 F1200 ; 0
G1 X45 Y-51.5 E0.0798 F1200 ; 0
G1 X45 Y-49.5 E0.0798 F1200 ; 0
G1 X43 Y-49.5 E0.0798 F1200 ; 0
G1 X43 Y-51.5 E0.0798 F1200 ; 0
G1 X43 Y-53.5 E0.0798 F1200 ; 0
G1 E-5 F1800 ; retract
G1 X46 Y-53.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X46 Y-53.1 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X47 Y-53.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X47 Y-51.5 F7200 ; move to start
G1 X47 Y-49.5 F7200 ; move to start
G1 X49 Y-49.5 E0.0798 F1200 ; 2
G1 X49 Y-51.5 E0.0798 F1200 ; 2
G1 X47 Y-51.5 E0.0798 F1200 ; 2
G1 X47 Y-53.5 E0.0798 F1200 ; 2
G1 X49 Y-53.5 E0.0798 F1200 ; 2
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y-47.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X45 Y-47.5 E0.0798 F1200 ; 0
G1 X45 Y-45.5 E0.0798 F1200 ; 0
G1 X45 Y-43.5 E0.0798 F1200 ; 0
G1 X43 Y-43.5 E0.0798 F1200 ; 0
G1 X43 Y-45.5 E0.0798 F1200 ; 0
G1 X43 Y-47.5 E0.0798 F1200 ; 0
G1 E-5 F1800 ; retract
G1 X46 Y-47.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X46 Y-47.1 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X47 Y-47.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X47 Y-45.5 F7200 ; move to start
G1 X47 Y-43.5 F7200 ; move to start
G1 X47 Y-45.5 E0.0798 F1200 ; 4
G1 X49 Y-45.5 E0.0798 F1200 ; 4
G1 X49 Y-43.5 F7200 ; move to start
G1 X49 Y-45.5 E0.0798 F1200 ; 4
G1 X49 Y-47.5 E0.0798 F1200 ; 4
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y-41.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X45 Y-41.5 E0.0798 F1200 ; 0
G1 X45 Y-39.5 E0.0798 F1200 ; 0
G1 X45 Y-37.5 E0.0798 F1200 ; 0
G1 X43 Y-37.5 E0.0798 F1200 ; 0
G1 X43 Y-39.5 E0.0798 F1200 ; 0
G1 X43 Y-41.5 E0.0798 F1200 ; 0
G1 E-5 F1800 ; retract
G1 X46 Y-41.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X46 Y-41.1 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X47 Y-41.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X47 Y-39.5 F7200 ; move to start
G1 X49 Y-39.5 E0.0798 F1200 ; 6
G1 X49 Y-41.5 E0.0798 F1200 ; 6
G1 X47 Y-41.5 E0.0798 F1200 ; 6
G1 X47 Y-39.5 E0.0798 F1200 ; 6
G1 X47 Y-37.5 E0.0798 F1200 ; 6
G1 X49 Y-37.5 E0.0798 F1200 ; 6
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y-35.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X45 Y-35.5 E0.0798 F1200 ; 0
G1 X45 Y-33.5 E0.0798 F1200 ; 0
G1 X45 Y-31.5 E0.0798 F1200 ; 0
G1 X43 Y-31.5 E0.0798 F1200 ; 0
G1 X43 Y-33.5 E0.0798 F1200 ; 0
G1 X43 Y-35.5 E0.0798 F1200 ; 0
G1 E-5 F1800 ; retract
G1 X46 Y-35.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X46 Y-35.1 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X47 Y-35.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X47 Y-33.5 F7200 ; move to start
G1 X49 Y-33.5 E0.0798 F1200 ; 8
G1 X49 Y-35.5 E0.0798 F1200 ; 8
G1 X47 Y-35.5 E0.0798 F1200 ; 8
G1 X47 Y-33.5 E0.0798 F1200 ; 8
G1 X47 Y-31.5 E0.0798 F1200 ; 8
G1 X49 Y-31.5 E0.0798 F1200 ; 8
G1 X49 Y-33.5 E0.0798 F1200 ; 8
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y-29.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X43 Y-27.5 E0.0798 F1200 ; 1
G1 X43 Y-25.5 E0.0798 F1200 ; 1
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y-23.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X43 Y-21.5 E0.0798 F1200 ; 1
G1 X43 Y-19.5 E0.0798 F1200 ; 1
G1 E-5 F1800 ; retract
G1 X44 Y-23.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X44 Y-23.1 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X45 Y-23.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X45 Y-21.5 F7200 ; move to start
G1 X45 Y-19.5 F7200 ; move to start
G1 X47 Y-19.5 E0.0798 F1200 ; 2
G1 X47 Y-21.5 E0.0798 F1200 ; 2
G1 X45 Y-21.5 E0.0798 F1200 ; 2
G1 X45 Y-23.5 E0.0798 F1200 ; 2
G1 X47 Y-23.5 E0.0798 F1200 ; 2
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y-17.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X43 Y-15.5 E0.0798 F1200 ; 1
G1 X43 Y-13.5 E0.0798 F1200 ; 1
G1 E-5 F1800 ; retract
G1 X44 Y-17.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X44 Y-17.1 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X45 Y-17.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X45 Y-15.5 F7200 ; move to start
G1 X45 Y-13.5 F7200 ; move to start
G1 X45 Y-15.5 E0.0798 F1200 ; 4
G1 X47 Y-15.5 E0.0798 F1200 ; 4
G1 X47 Y-13.5 F7200 ; move to start
G1 X47 Y-15.5 E0.0798 F1200 ; 4
G1 X47 Y-17.5 E0.0798 F1200 ; 4
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y-11.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X43 Y-9.5 E0.0798 F1200 ; 1
G1 X43 Y-7.5 E0.0798 F1200 ; 1
G1 E-5 F1800 ; retract
G1 X44 Y-11.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X44 Y-11.1 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X45 Y-11.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X45 Y-9.5 F7200 ; move to start
G1 X47 Y-9.5 E0.0798 F1200 ; 6
G1 X47 Y-11.5 E0.0798 F1200 ; 6
G1 X45 Y-11.5 E0.0798 F1200 ; 6
G1 X45 Y-9.5 E0.0798 F1200 ; 6
G1 X45 Y-7.5 E0.0798 F1200 ; 6
G1 X47 Y-7.5 E0.0798 F1200 ; 6
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y-5.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X43 Y-3.5 E0.0798 F1200 ; 1
G1 X43 Y-1.5 E0.0798 F1200 ; 1
G1 E-5 F1800 ; retract
G1 X44 Y-5.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X44 Y-5.1 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X45 Y-5.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X45 Y-3.5 F7200 ; move to start
G1 X47 Y-3.5 E0.0798 F1200 ; 8
G1 X47 Y-5.5 E0.0798 F1200 ; 8
G1 X45 Y-5.5 E0.0798 F1200 ; 8
G1 X45 Y-3.5 E0.0798 F1200 ; 8
G1 X45 Y-1.5 E0.0798 F1200 ; 8
G1 X47 Y-1.5 E0.0798 F1200 ; 8
G1 X47 Y-3.5 E0.0798 F1200 ; 8
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y0.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X43 Y2.5 F7200 ; move to start
G1 X43 Y4.5 F7200 ; move to start
G1 X45 Y4.5 E0.0798 F1200 ; 2
G1 X45 Y2.5 E0.0798 F1200 ; 2
G1 X43 Y2.5 E0.0798 F1200 ; 2
G1 X43 Y0.5 E0.0798 F1200 ; 2
G1 X45 Y0.5 E0.0798 F1200 ; 2
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y6.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X43 Y8.5 F7200 ; move to start
G1 X43 Y10.5 F7200 ; move to start
G1 X45 Y10.5 E0.0798 F1200 ; 2
G1 X45 Y8.5 E0.0798 F1200 ; 2
G1 X43 Y8.5 E0.0798 F1200 ; 2
G1 X43 Y6.5 E0.0798 F1200 ; 2
G1 X45 Y6.5 E0.0798 F1200 ; 2
G1 E-5 F1800 ; retract
G1 X46 Y6.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X46 Y6.9 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X47 Y6.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X47 Y8.5 F7200 ; move to start
G1 X47 Y10.5 F7200 ; move to start
G1 X49 Y10.5 E0.0798 F1200 ; 2
G1 X49 Y8.5 E0.0798 F1200 ; 2
G1 X47 Y8.5 E0.0798 F1200 ; 2
G1 X47 Y6.5 E0.0798 F1200 ; 2
G1 X49 Y6.5 E0.0798 F1200 ; 2
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y12.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X43 Y14.5 F7200 ; move to start
G1 X43 Y16.5 F7200 ; move to start
G1 X45 Y16.5 E0.0798 F1200 ; 2
G1 X45 Y14.5 E0.0798 F1200 ; 2
G1 X43 Y14.5 E0.0798 F1200 ; 2
G1 X43 Y12.5 E0.0798 F1200 ; 2
G1 X45 Y12.5 E0.0798 F1200 ; 2
G1 E-5 F1800 ; retract
G1 X46 Y12.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X46 Y12.9 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X47 Y12.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X47 Y14.5 F7200 ; move to start
G1 X47 Y16.5 F7200 ; move to start
G1 X47 Y14.5 E0.0798 F1200 ; 4
G1 X49 Y14.5 E0.0798 F1200 ; 4
G1 X49 Y16.5 F7200 ; move to start
G1 X49 Y14.5 E0.0798 F1200 ; 4
G1 X49 Y12.5 E0.0798 F1200 ; 4
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y18.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X43 Y20.5 F7200 ; move to start
G1 X43 Y22.5 F7200 ; move to start
G1 X45 Y22.5 E0.0798 F1200 ; 2
G1 X45 Y20.5 E0.0798 F1200 ; 2
G1 X43 Y20.5 E0.0798 F1200 ; 2
G1 X43 Y18.5 E0.0798 F1200 ; 2
G1 X45 Y18.5 E0.0798 F1200 ; 2
G1 E-5 F1800 ; retract
G1 X46 Y18.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X46 Y18.9 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X47 Y18.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X47 Y20.5 F7200 ; move to start
G1 X49 Y20.5 E0.0798 F1200 ; 6
G1 X49 Y18.5 E0.0798 F1200 ; 6
G1 X47 Y18.5 E0.0798 F1200 ; 6
G1 X47 Y20.5 E0.0798 F1200 ; 6
G1 X47 Y22.5 E0.0798 F1200 ; 6
G1 X49 Y22.5 E0.0798 F1200 ; 6
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y24.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X43 Y26.5 F7200 ; move to start
G1 X43 Y28.5 F7200 ; move to start
G1 X45 Y28.5 E0.0798 F1200 ; 2
G1 X45 Y26.5 E0.0798 F1200 ; 2
G1 X43 Y26.5 E0.0798 F1200 ; 2
G1 X43 Y24.5 E0.0798 F1200 ; 2
G1 X45 Y24.5 E0.0798 F1200 ; 2
G1 E-5 F1800 ; retract
G1 X46 Y24.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X46 Y24.9 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X47 Y24.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X47 Y26.5 F7200 ; move to start
G1 X49 Y26.5 E0.0798 F1200 ; 8
G1 X49 Y24.5 E0.0798 F1200 ; 8
G1 X47 Y24.5 E0.0798 F1200 ; 8
G1 X47 Y26.5 E0.0798 F1200 ; 8
G1 X47 Y28.5 E0.0798 F1200 ; 8
G1 X49 Y28.5 E0.0798 F1200 ; 8
G1 X49 Y26.5 E0.0798 F1200 ; 8
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