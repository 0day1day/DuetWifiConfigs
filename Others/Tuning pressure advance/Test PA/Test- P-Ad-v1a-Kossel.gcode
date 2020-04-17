M572 D0 S; ### Marlin K-Factor Calibration Pattern ###
; -------------------------------------------
;
; Created: Wed Apr 24 2019 11:26:30 GMT+0200 (hora de verano de Europa central)
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
; Ending Value Factor = 0.5
; Factor Stepping = 0.01
; Test Line Spacing = 3 mm
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
G1 X-49 Y-87.5 F7200 ; move to start
G1 X-49 Y87.5 E17.4616 F1800 ; print line
G1 X-48.28 Y87.5 F7200 ; move to start
G1 X-48.28 Y-87.5 E17.4616 F1800 ; print line
G1 E-5 F1800 ; retract
;
; start the Test pattern
;
G4 P2000 ; Pause (dwell) for 2 seconds
G1 X-39 Y-87.5 F7200 ; move to start
M572 D0 S0 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-87.5 E0.7982 F1200 ; print line
G1 X21 Y-87.5 E1.5965 F4200 ; print line
G1 X41 Y-87.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-84.5 F7200 ; move to start
M572 D0 S0.01 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-84.5 E0.7982 F1200 ; print line
G1 X21 Y-84.5 E1.5965 F4200 ; print line
G1 X41 Y-84.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-81.5 F7200 ; move to start
M572 D0 S0.02 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-81.5 E0.7982 F1200 ; print line
G1 X21 Y-81.5 E1.5965 F4200 ; print line
G1 X41 Y-81.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-78.5 F7200 ; move to start
M572 D0 S0.03 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-78.5 E0.7982 F1200 ; print line
G1 X21 Y-78.5 E1.5965 F4200 ; print line
G1 X41 Y-78.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-75.5 F7200 ; move to start
M572 D0 S0.04 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-75.5 E0.7982 F1200 ; print line
G1 X21 Y-75.5 E1.5965 F4200 ; print line
G1 X41 Y-75.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-72.5 F7200 ; move to start
M572 D0 S0.05 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-72.5 E0.7982 F1200 ; print line
G1 X21 Y-72.5 E1.5965 F4200 ; print line
G1 X41 Y-72.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-69.5 F7200 ; move to start
M572 D0 S0.06 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-69.5 E0.7982 F1200 ; print line
G1 X21 Y-69.5 E1.5965 F4200 ; print line
G1 X41 Y-69.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-66.5 F7200 ; move to start
M572 D0 S0.07 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-66.5 E0.7982 F1200 ; print line
G1 X21 Y-66.5 E1.5965 F4200 ; print line
G1 X41 Y-66.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-63.5 F7200 ; move to start
M572 D0 S0.08 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-63.5 E0.7982 F1200 ; print line
G1 X21 Y-63.5 E1.5965 F4200 ; print line
G1 X41 Y-63.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-60.5 F7200 ; move to start
M572 D0 S0.09 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-60.5 E0.7982 F1200 ; print line
G1 X21 Y-60.5 E1.5965 F4200 ; print line
G1 X41 Y-60.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-57.5 F7200 ; move to start
M572 D0 S0.1 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-57.5 E0.7982 F1200 ; print line
G1 X21 Y-57.5 E1.5965 F4200 ; print line
G1 X41 Y-57.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-54.5 F7200 ; move to start
M572 D0 S0.11 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-54.5 E0.7982 F1200 ; print line
G1 X21 Y-54.5 E1.5965 F4200 ; print line
G1 X41 Y-54.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-51.5 F7200 ; move to start
M572 D0 S0.12 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-51.5 E0.7982 F1200 ; print line
G1 X21 Y-51.5 E1.5965 F4200 ; print line
G1 X41 Y-51.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-48.5 F7200 ; move to start
M572 D0 S0.13 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-48.5 E0.7982 F1200 ; print line
G1 X21 Y-48.5 E1.5965 F4200 ; print line
G1 X41 Y-48.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-45.5 F7200 ; move to start
M572 D0 S0.14 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-45.5 E0.7982 F1200 ; print line
G1 X21 Y-45.5 E1.5965 F4200 ; print line
G1 X41 Y-45.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-42.5 F7200 ; move to start
M572 D0 S0.15 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-42.5 E0.7982 F1200 ; print line
G1 X21 Y-42.5 E1.5965 F4200 ; print line
G1 X41 Y-42.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-39.5 F7200 ; move to start
M572 D0 S0.16 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-39.5 E0.7982 F1200 ; print line
G1 X21 Y-39.5 E1.5965 F4200 ; print line
G1 X41 Y-39.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-36.5 F7200 ; move to start
M572 D0 S0.17 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-36.5 E0.7982 F1200 ; print line
G1 X21 Y-36.5 E1.5965 F4200 ; print line
G1 X41 Y-36.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-33.5 F7200 ; move to start
M572 D0 S0.18 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-33.5 E0.7982 F1200 ; print line
G1 X21 Y-33.5 E1.5965 F4200 ; print line
G1 X41 Y-33.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-30.5 F7200 ; move to start
M572 D0 S0.19 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-30.5 E0.7982 F1200 ; print line
G1 X21 Y-30.5 E1.5965 F4200 ; print line
G1 X41 Y-30.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-27.5 F7200 ; move to start
M572 D0 S0.2 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-27.5 E0.7982 F1200 ; print line
G1 X21 Y-27.5 E1.5965 F4200 ; print line
G1 X41 Y-27.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-24.5 F7200 ; move to start
M572 D0 S0.21 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-24.5 E0.7982 F1200 ; print line
G1 X21 Y-24.5 E1.5965 F4200 ; print line
G1 X41 Y-24.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-21.5 F7200 ; move to start
M572 D0 S0.22 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-21.5 E0.7982 F1200 ; print line
G1 X21 Y-21.5 E1.5965 F4200 ; print line
G1 X41 Y-21.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-18.5 F7200 ; move to start
M572 D0 S0.23 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-18.5 E0.7982 F1200 ; print line
G1 X21 Y-18.5 E1.5965 F4200 ; print line
G1 X41 Y-18.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-15.5 F7200 ; move to start
M572 D0 S0.24 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-15.5 E0.7982 F1200 ; print line
G1 X21 Y-15.5 E1.5965 F4200 ; print line
G1 X41 Y-15.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-12.5 F7200 ; move to start
M572 D0 S0.25 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-12.5 E0.7982 F1200 ; print line
G1 X21 Y-12.5 E1.5965 F4200 ; print line
G1 X41 Y-12.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-9.5 F7200 ; move to start
M572 D0 S0.26 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-9.5 E0.7982 F1200 ; print line
G1 X21 Y-9.5 E1.5965 F4200 ; print line
G1 X41 Y-9.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-6.5 F7200 ; move to start
M572 D0 S0.27 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-6.5 E0.7982 F1200 ; print line
G1 X21 Y-6.5 E1.5965 F4200 ; print line
G1 X41 Y-6.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-3.5 F7200 ; move to start
M572 D0 S0.28 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-3.5 E0.7982 F1200 ; print line
G1 X21 Y-3.5 E1.5965 F4200 ; print line
G1 X41 Y-3.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y-0.5 F7200 ; move to start
M572 D0 S0.29 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y-0.5 E0.7982 F1200 ; print line
G1 X21 Y-0.5 E1.5965 F4200 ; print line
G1 X41 Y-0.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y2.5 F7200 ; move to start
M572 D0 S0.3 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y2.5 E0.7982 F1200 ; print line
G1 X21 Y2.5 E1.5965 F4200 ; print line
G1 X41 Y2.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y5.5 F7200 ; move to start
M572 D0 S0.31 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y5.5 E0.7982 F1200 ; print line
G1 X21 Y5.5 E1.5965 F4200 ; print line
G1 X41 Y5.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y8.5 F7200 ; move to start
M572 D0 S0.32 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y8.5 E0.7982 F1200 ; print line
G1 X21 Y8.5 E1.5965 F4200 ; print line
G1 X41 Y8.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y11.5 F7200 ; move to start
M572 D0 S0.33 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y11.5 E0.7982 F1200 ; print line
G1 X21 Y11.5 E1.5965 F4200 ; print line
G1 X41 Y11.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y14.5 F7200 ; move to start
M572 D0 S0.34 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y14.5 E0.7982 F1200 ; print line
G1 X21 Y14.5 E1.5965 F4200 ; print line
G1 X41 Y14.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y17.5 F7200 ; move to start
M572 D0 S0.35 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y17.5 E0.7982 F1200 ; print line
G1 X21 Y17.5 E1.5965 F4200 ; print line
G1 X41 Y17.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y20.5 F7200 ; move to start
M572 D0 S0.36 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y20.5 E0.7982 F1200 ; print line
G1 X21 Y20.5 E1.5965 F4200 ; print line
G1 X41 Y20.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y23.5 F7200 ; move to start
M572 D0 S0.37 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y23.5 E0.7982 F1200 ; print line
G1 X21 Y23.5 E1.5965 F4200 ; print line
G1 X41 Y23.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y26.5 F7200 ; move to start
M572 D0 S0.38 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y26.5 E0.7982 F1200 ; print line
G1 X21 Y26.5 E1.5965 F4200 ; print line
G1 X41 Y26.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y29.5 F7200 ; move to start
M572 D0 S0.39 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y29.5 E0.7982 F1200 ; print line
G1 X21 Y29.5 E1.5965 F4200 ; print line
G1 X41 Y29.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y32.5 F7200 ; move to start
M572 D0 S0.4 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y32.5 E0.7982 F1200 ; print line
G1 X21 Y32.5 E1.5965 F4200 ; print line
G1 X41 Y32.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y35.5 F7200 ; move to start
M572 D0 S0.41 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y35.5 E0.7982 F1200 ; print line
G1 X21 Y35.5 E1.5965 F4200 ; print line
G1 X41 Y35.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y38.5 F7200 ; move to start
M572 D0 S0.42 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y38.5 E0.7982 F1200 ; print line
G1 X21 Y38.5 E1.5965 F4200 ; print line
G1 X41 Y38.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y41.5 F7200 ; move to start
M572 D0 S0.43 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y41.5 E0.7982 F1200 ; print line
G1 X21 Y41.5 E1.5965 F4200 ; print line
G1 X41 Y41.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y44.5 F7200 ; move to start
M572 D0 S0.44 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y44.5 E0.7982 F1200 ; print line
G1 X21 Y44.5 E1.5965 F4200 ; print line
G1 X41 Y44.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y47.5 F7200 ; move to start
M572 D0 S0.45 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y47.5 E0.7982 F1200 ; print line
G1 X21 Y47.5 E1.5965 F4200 ; print line
G1 X41 Y47.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y50.5 F7200 ; move to start
M572 D0 S0.46 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y50.5 E0.7982 F1200 ; print line
G1 X21 Y50.5 E1.5965 F4200 ; print line
G1 X41 Y50.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y53.5 F7200 ; move to start
M572 D0 S0.47 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y53.5 E0.7982 F1200 ; print line
G1 X21 Y53.5 E1.5965 F4200 ; print line
G1 X41 Y53.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y56.5 F7200 ; move to start
M572 D0 S0.48 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y56.5 E0.7982 F1200 ; print line
G1 X21 Y56.5 E1.5965 F4200 ; print line
G1 X41 Y56.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y59.5 F7200 ; move to start
M572 D0 S0.49 ; set K-factor
G1 E5 F1800 ; un-retract
G1 X-19 Y59.5 E0.7982 F1200 ; print line
G1 X21 Y59.5 E1.5965 F4200 ; print line
G1 X41 Y59.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X-39 Y62.5 F7200 ; move to start
;
; mark the test area for reference
;
M572 D0 S0 ; set K-factor 0
G1 X-19 Y67.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X-19 Y87.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 X21 Y67.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X21 Y87.5 E0.7982 F1200 ; print line
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
;
; print K-values
;
G1 X43 Y-89.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X45 Y-89.5 E0.0798 F1200 ; 0
G1 X45 Y-87.5 E0.0798 F1200 ; 0
G1 X45 Y-85.5 E0.0798 F1200 ; 0
G1 X43 Y-85.5 E0.0798 F1200 ; 0
G1 X43 Y-87.5 E0.0798 F1200 ; 0
G1 X43 Y-89.5 E0.0798 F1200 ; 0
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y-83.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X45 Y-83.5 E0.0798 F1200 ; 0
G1 X45 Y-81.5 E0.0798 F1200 ; 0
G1 X45 Y-79.5 E0.0798 F1200 ; 0
G1 X43 Y-79.5 E0.0798 F1200 ; 0
G1 X43 Y-81.5 E0.0798 F1200 ; 0
G1 X43 Y-83.5 E0.0798 F1200 ; 0
G1 E-5 F1800 ; retract
G1 X46 Y-83.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X46 Y-83.1 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X47 Y-83.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X49 Y-83.5 E0.0798 F1200 ; 0
G1 X49 Y-81.5 E0.0798 F1200 ; 0
G1 X49 Y-79.5 E0.0798 F1200 ; 0
G1 X47 Y-79.5 E0.0798 F1200 ; 0
G1 X47 Y-81.5 E0.0798 F1200 ; 0
G1 X47 Y-83.5 E0.0798 F1200 ; 0
G1 E-5 F1800 ; retract
G1 X50 Y-83.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X50 Y-81.5 F7200 ; move to start
G1 X50 Y-79.5 F7200 ; move to start
G1 X52 Y-79.5 E0.0798 F1200 ; 2
G1 X52 Y-81.5 E0.0798 F1200 ; 2
G1 X50 Y-81.5 E0.0798 F1200 ; 2
G1 X50 Y-83.5 E0.0798 F1200 ; 2
G1 X52 Y-83.5 E0.0798 F1200 ; 2
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y-77.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X45 Y-77.5 E0.0798 F1200 ; 0
G1 X45 Y-75.5 E0.0798 F1200 ; 0
G1 X45 Y-73.5 E0.0798 F1200 ; 0
G1 X43 Y-73.5 E0.0798 F1200 ; 0
G1 X43 Y-75.5 E0.0798 F1200 ; 0
G1 X43 Y-77.5 E0.0798 F1200 ; 0
G1 E-5 F1800 ; retract
G1 X46 Y-77.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X46 Y-77.1 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X47 Y-77.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X49 Y-77.5 E0.0798 F1200 ; 0
G1 X49 Y-75.5 E0.0798 F1200 ; 0
G1 X49 Y-73.5 E0.0798 F1200 ; 0
G1 X47 Y-73.5 E0.0798 F1200 ; 0
G1 X47 Y-75.5 E0.0798 F1200 ; 0
G1 X47 Y-77.5 E0.0798 F1200 ; 0
G1 E-5 F1800 ; retract
G1 X50 Y-77.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X50 Y-75.5 F7200 ; move to start
G1 X50 Y-73.5 F7200 ; move to start
G1 X50 Y-75.5 E0.0798 F1200 ; 4
G1 X52 Y-75.5 E0.0798 F1200 ; 4
G1 X52 Y-73.5 F7200 ; move to start
G1 X52 Y-75.5 E0.0798 F1200 ; 4
G1 X52 Y-77.5 E0.0798 F1200 ; 4
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y-71.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X45 Y-71.5 E0.0798 F1200 ; 0
G1 X45 Y-69.5 E0.0798 F1200 ; 0
G1 X45 Y-67.5 E0.0798 F1200 ; 0
G1 X43 Y-67.5 E0.0798 F1200 ; 0
G1 X43 Y-69.5 E0.0798 F1200 ; 0
G1 X43 Y-71.5 E0.0798 F1200 ; 0
G1 E-5 F1800 ; retract
G1 X46 Y-71.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X46 Y-71.1 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X47 Y-71.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X49 Y-71.5 E0.0798 F1200 ; 0
G1 X49 Y-69.5 E0.0798 F1200 ; 0
G1 X49 Y-67.5 E0.0798 F1200 ; 0
G1 X47 Y-67.5 E0.0798 F1200 ; 0
G1 X47 Y-69.5 E0.0798 F1200 ; 0
G1 X47 Y-71.5 E0.0798 F1200 ; 0
G1 E-5 F1800 ; retract
G1 X50 Y-71.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X50 Y-69.5 F7200 ; move to start
G1 X52 Y-69.5 E0.0798 F1200 ; 6
G1 X52 Y-71.5 E0.0798 F1200 ; 6
G1 X50 Y-71.5 E0.0798 F1200 ; 6
G1 X50 Y-69.5 E0.0798 F1200 ; 6
G1 X50 Y-67.5 E0.0798 F1200 ; 6
G1 X52 Y-67.5 E0.0798 F1200 ; 6
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y-65.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X45 Y-65.5 E0.0798 F1200 ; 0
G1 X45 Y-63.5 E0.0798 F1200 ; 0
G1 X45 Y-61.5 E0.0798 F1200 ; 0
G1 X43 Y-61.5 E0.0798 F1200 ; 0
G1 X43 Y-63.5 E0.0798 F1200 ; 0
G1 X43 Y-65.5 E0.0798 F1200 ; 0
G1 E-5 F1800 ; retract
G1 X46 Y-65.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X46 Y-65.1 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X47 Y-65.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X49 Y-65.5 E0.0798 F1200 ; 0
G1 X49 Y-63.5 E0.0798 F1200 ; 0
G1 X49 Y-61.5 E0.0798 F1200 ; 0
G1 X47 Y-61.5 E0.0798 F1200 ; 0
G1 X47 Y-63.5 E0.0798 F1200 ; 0
G1 X47 Y-65.5 E0.0798 F1200 ; 0
G1 E-5 F1800 ; retract
G1 X50 Y-65.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X50 Y-63.5 F7200 ; move to start
G1 X52 Y-63.5 E0.0798 F1200 ; 8
G1 X52 Y-65.5 E0.0798 F1200 ; 8
G1 X50 Y-65.5 E0.0798 F1200 ; 8
G1 X50 Y-63.5 E0.0798 F1200 ; 8
G1 X50 Y-61.5 E0.0798 F1200 ; 8
G1 X52 Y-61.5 E0.0798 F1200 ; 8
G1 X52 Y-63.5 E0.0798 F1200 ; 8
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
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
G1 X46 Y-59.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X46 Y-59.1 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X47 Y-59.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X47 Y-57.5 E0.0798 F1200 ; 1
G1 X47 Y-55.5 E0.0798 F1200 ; 1
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
G1 X47 Y-51.5 E0.0798 F1200 ; 1
G1 X47 Y-49.5 E0.0798 F1200 ; 1
G1 E-5 F1800 ; retract
G1 X48 Y-53.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X48 Y-51.5 F7200 ; move to start
G1 X48 Y-49.5 F7200 ; move to start
G1 X50 Y-49.5 E0.0798 F1200 ; 2
G1 X50 Y-51.5 E0.0798 F1200 ; 2
G1 X48 Y-51.5 E0.0798 F1200 ; 2
G1 X48 Y-53.5 E0.0798 F1200 ; 2
G1 X50 Y-53.5 E0.0798 F1200 ; 2
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
G1 X47 Y-45.5 E0.0798 F1200 ; 1
G1 X47 Y-43.5 E0.0798 F1200 ; 1
G1 E-5 F1800 ; retract
G1 X48 Y-47.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X48 Y-45.5 F7200 ; move to start
G1 X48 Y-43.5 F7200 ; move to start
G1 X48 Y-45.5 E0.0798 F1200 ; 4
G1 X50 Y-45.5 E0.0798 F1200 ; 4
G1 X50 Y-43.5 F7200 ; move to start
G1 X50 Y-45.5 E0.0798 F1200 ; 4
G1 X50 Y-47.5 E0.0798 F1200 ; 4
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
G1 X47 Y-39.5 E0.0798 F1200 ; 1
G1 X47 Y-37.5 E0.0798 F1200 ; 1
G1 E-5 F1800 ; retract
G1 X48 Y-41.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X48 Y-39.5 F7200 ; move to start
G1 X50 Y-39.5 E0.0798 F1200 ; 6
G1 X50 Y-41.5 E0.0798 F1200 ; 6
G1 X48 Y-41.5 E0.0798 F1200 ; 6
G1 X48 Y-39.5 E0.0798 F1200 ; 6
G1 X48 Y-37.5 E0.0798 F1200 ; 6
G1 X50 Y-37.5 E0.0798 F1200 ; 6
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
G1 X47 Y-33.5 E0.0798 F1200 ; 1
G1 X47 Y-31.5 E0.0798 F1200 ; 1
G1 E-5 F1800 ; retract
G1 X48 Y-35.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X48 Y-33.5 F7200 ; move to start
G1 X50 Y-33.5 E0.0798 F1200 ; 8
G1 X50 Y-35.5 E0.0798 F1200 ; 8
G1 X48 Y-35.5 E0.0798 F1200 ; 8
G1 X48 Y-33.5 E0.0798 F1200 ; 8
G1 X48 Y-31.5 E0.0798 F1200 ; 8
G1 X50 Y-31.5 E0.0798 F1200 ; 8
G1 X50 Y-33.5 E0.0798 F1200 ; 8
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
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
G1 X49 Y-25.5 E0.0798 F1200 ; 2
G1 X49 Y-27.5 E0.0798 F1200 ; 2
G1 X47 Y-27.5 E0.0798 F1200 ; 2
G1 X47 Y-29.5 E0.0798 F1200 ; 2
G1 X49 Y-29.5 E0.0798 F1200 ; 2
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
G1 X49 Y-19.5 E0.0798 F1200 ; 2
G1 X49 Y-21.5 E0.0798 F1200 ; 2
G1 X47 Y-21.5 E0.0798 F1200 ; 2
G1 X47 Y-23.5 E0.0798 F1200 ; 2
G1 X49 Y-23.5 E0.0798 F1200 ; 2
G1 E-5 F1800 ; retract
G1 X50 Y-23.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X50 Y-21.5 F7200 ; move to start
G1 X50 Y-19.5 F7200 ; move to start
G1 X52 Y-19.5 E0.0798 F1200 ; 2
G1 X52 Y-21.5 E0.0798 F1200 ; 2
G1 X50 Y-21.5 E0.0798 F1200 ; 2
G1 X50 Y-23.5 E0.0798 F1200 ; 2
G1 X52 Y-23.5 E0.0798 F1200 ; 2
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
G1 X47 Y-15.5 F7200 ; move to start
G1 X47 Y-13.5 F7200 ; move to start
G1 X49 Y-13.5 E0.0798 F1200 ; 2
G1 X49 Y-15.5 E0.0798 F1200 ; 2
G1 X47 Y-15.5 E0.0798 F1200 ; 2
G1 X47 Y-17.5 E0.0798 F1200 ; 2
G1 X49 Y-17.5 E0.0798 F1200 ; 2
G1 E-5 F1800 ; retract
G1 X50 Y-17.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X50 Y-15.5 F7200 ; move to start
G1 X50 Y-13.5 F7200 ; move to start
G1 X50 Y-15.5 E0.0798 F1200 ; 4
G1 X52 Y-15.5 E0.0798 F1200 ; 4
G1 X52 Y-13.5 F7200 ; move to start
G1 X52 Y-15.5 E0.0798 F1200 ; 4
G1 X52 Y-17.5 E0.0798 F1200 ; 4
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
G1 X47 Y-7.5 F7200 ; move to start
G1 X49 Y-7.5 E0.0798 F1200 ; 2
G1 X49 Y-9.5 E0.0798 F1200 ; 2
G1 X47 Y-9.5 E0.0798 F1200 ; 2
G1 X47 Y-11.5 E0.0798 F1200 ; 2
G1 X49 Y-11.5 E0.0798 F1200 ; 2
G1 E-5 F1800 ; retract
G1 X50 Y-11.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X50 Y-9.5 F7200 ; move to start
G1 X52 Y-9.5 E0.0798 F1200 ; 6
G1 X52 Y-11.5 E0.0798 F1200 ; 6
G1 X50 Y-11.5 E0.0798 F1200 ; 6
G1 X50 Y-9.5 E0.0798 F1200 ; 6
G1 X50 Y-7.5 E0.0798 F1200 ; 6
G1 X52 Y-7.5 E0.0798 F1200 ; 6
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
G1 X49 Y-1.5 E0.0798 F1200 ; 2
G1 X49 Y-3.5 E0.0798 F1200 ; 2
G1 X47 Y-3.5 E0.0798 F1200 ; 2
G1 X47 Y-5.5 E0.0798 F1200 ; 2
G1 X49 Y-5.5 E0.0798 F1200 ; 2
G1 E-5 F1800 ; retract
G1 X50 Y-5.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X50 Y-3.5 F7200 ; move to start
G1 X52 Y-3.5 E0.0798 F1200 ; 8
G1 X52 Y-5.5 E0.0798 F1200 ; 8
G1 X50 Y-5.5 E0.0798 F1200 ; 8
G1 X50 Y-3.5 E0.0798 F1200 ; 8
G1 X50 Y-1.5 E0.0798 F1200 ; 8
G1 X52 Y-1.5 E0.0798 F1200 ; 8
G1 X52 Y-3.5 E0.0798 F1200 ; 8
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y0.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X45 Y0.5 E0.0798 F1200 ; 0
G1 X45 Y2.5 E0.0798 F1200 ; 0
G1 X45 Y4.5 E0.0798 F1200 ; 0
G1 X43 Y4.5 E0.0798 F1200 ; 0
G1 X43 Y2.5 E0.0798 F1200 ; 0
G1 X43 Y0.5 E0.0798 F1200 ; 0
G1 E-5 F1800 ; retract
G1 X46 Y0.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X46 Y0.9 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X47 Y0.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X47 Y2.5 F7200 ; move to start
G1 X47 Y4.5 F7200 ; move to start
G1 X49 Y4.5 E0.0798 F1200 ; 3
G1 X49 Y2.5 E0.0798 F1200 ; 3
G1 X49 Y0.5 E0.0798 F1200 ; 3
G1 X47 Y0.5 E0.0798 F1200 ; 3
G1 X47 Y2.5 F7200 ; move to start
G1 X49 Y2.5 E0.0798 F1200 ; 3
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y6.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X45 Y6.5 E0.0798 F1200 ; 0
G1 X45 Y8.5 E0.0798 F1200 ; 0
G1 X45 Y10.5 E0.0798 F1200 ; 0
G1 X43 Y10.5 E0.0798 F1200 ; 0
G1 X43 Y8.5 E0.0798 F1200 ; 0
G1 X43 Y6.5 E0.0798 F1200 ; 0
G1 E-5 F1800 ; retract
G1 X46 Y6.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X46 Y6.9 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X47 Y6.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X47 Y8.5 F7200 ; move to start
G1 X47 Y10.5 F7200 ; move to start
G1 X49 Y10.5 E0.0798 F1200 ; 3
G1 X49 Y8.5 E0.0798 F1200 ; 3
G1 X49 Y6.5 E0.0798 F1200 ; 3
G1 X47 Y6.5 E0.0798 F1200 ; 3
G1 X47 Y8.5 F7200 ; move to start
G1 X49 Y8.5 E0.0798 F1200 ; 3
G1 E-5 F1800 ; retract
G1 X50 Y6.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X50 Y8.5 F7200 ; move to start
G1 X50 Y10.5 F7200 ; move to start
G1 X52 Y10.5 E0.0798 F1200 ; 2
G1 X52 Y8.5 E0.0798 F1200 ; 2
G1 X50 Y8.5 E0.0798 F1200 ; 2
G1 X50 Y6.5 E0.0798 F1200 ; 2
G1 X52 Y6.5 E0.0798 F1200 ; 2
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y12.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X45 Y12.5 E0.0798 F1200 ; 0
G1 X45 Y14.5 E0.0798 F1200 ; 0
G1 X45 Y16.5 E0.0798 F1200 ; 0
G1 X43 Y16.5 E0.0798 F1200 ; 0
G1 X43 Y14.5 E0.0798 F1200 ; 0
G1 X43 Y12.5 E0.0798 F1200 ; 0
G1 E-5 F1800 ; retract
G1 X46 Y12.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X46 Y12.9 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X47 Y12.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X47 Y14.5 F7200 ; move to start
G1 X47 Y16.5 F7200 ; move to start
G1 X49 Y16.5 E0.0798 F1200 ; 3
G1 X49 Y14.5 E0.0798 F1200 ; 3
G1 X49 Y12.5 E0.0798 F1200 ; 3
G1 X47 Y12.5 E0.0798 F1200 ; 3
G1 X47 Y14.5 F7200 ; move to start
G1 X49 Y14.5 E0.0798 F1200 ; 3
G1 E-5 F1800 ; retract
G1 X50 Y12.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X50 Y14.5 F7200 ; move to start
G1 X50 Y16.5 F7200 ; move to start
G1 X50 Y14.5 E0.0798 F1200 ; 4
G1 X52 Y14.5 E0.0798 F1200 ; 4
G1 X52 Y16.5 F7200 ; move to start
G1 X52 Y14.5 E0.0798 F1200 ; 4
G1 X52 Y12.5 E0.0798 F1200 ; 4
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y18.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X45 Y18.5 E0.0798 F1200 ; 0
G1 X45 Y20.5 E0.0798 F1200 ; 0
G1 X45 Y22.5 E0.0798 F1200 ; 0
G1 X43 Y22.5 E0.0798 F1200 ; 0
G1 X43 Y20.5 E0.0798 F1200 ; 0
G1 X43 Y18.5 E0.0798 F1200 ; 0
G1 E-5 F1800 ; retract
G1 X46 Y18.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X46 Y18.9 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X47 Y18.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X47 Y20.5 F7200 ; move to start
G1 X47 Y22.5 F7200 ; move to start
G1 X49 Y22.5 E0.0798 F1200 ; 3
G1 X49 Y20.5 E0.0798 F1200 ; 3
G1 X49 Y18.5 E0.0798 F1200 ; 3
G1 X47 Y18.5 E0.0798 F1200 ; 3
G1 X47 Y20.5 F7200 ; move to start
G1 X49 Y20.5 E0.0798 F1200 ; 3
G1 E-5 F1800 ; retract
G1 X50 Y18.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X50 Y20.5 F7200 ; move to start
G1 X52 Y20.5 E0.0798 F1200 ; 6
G1 X52 Y18.5 E0.0798 F1200 ; 6
G1 X50 Y18.5 E0.0798 F1200 ; 6
G1 X50 Y20.5 E0.0798 F1200 ; 6
G1 X50 Y22.5 E0.0798 F1200 ; 6
G1 X52 Y22.5 E0.0798 F1200 ; 6
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y24.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X45 Y24.5 E0.0798 F1200 ; 0
G1 X45 Y26.5 E0.0798 F1200 ; 0
G1 X45 Y28.5 E0.0798 F1200 ; 0
G1 X43 Y28.5 E0.0798 F1200 ; 0
G1 X43 Y26.5 E0.0798 F1200 ; 0
G1 X43 Y24.5 E0.0798 F1200 ; 0
G1 E-5 F1800 ; retract
G1 X46 Y24.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X46 Y24.9 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X47 Y24.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X47 Y26.5 F7200 ; move to start
G1 X47 Y28.5 F7200 ; move to start
G1 X49 Y28.5 E0.0798 F1200 ; 3
G1 X49 Y26.5 E0.0798 F1200 ; 3
G1 X49 Y24.5 E0.0798 F1200 ; 3
G1 X47 Y24.5 E0.0798 F1200 ; 3
G1 X47 Y26.5 F7200 ; move to start
G1 X49 Y26.5 E0.0798 F1200 ; 3
G1 E-5 F1800 ; retract
G1 X50 Y24.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X50 Y26.5 F7200 ; move to start
G1 X52 Y26.5 E0.0798 F1200 ; 8
G1 X52 Y24.5 E0.0798 F1200 ; 8
G1 X50 Y24.5 E0.0798 F1200 ; 8
G1 X50 Y26.5 E0.0798 F1200 ; 8
G1 X50 Y28.5 E0.0798 F1200 ; 8
G1 X52 Y28.5 E0.0798 F1200 ; 8
G1 X52 Y26.5 E0.0798 F1200 ; 8
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y30.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X45 Y30.5 E0.0798 F1200 ; 0
G1 X45 Y32.5 E0.0798 F1200 ; 0
G1 X45 Y34.5 E0.0798 F1200 ; 0
G1 X43 Y34.5 E0.0798 F1200 ; 0
G1 X43 Y32.5 E0.0798 F1200 ; 0
G1 X43 Y30.5 E0.0798 F1200 ; 0
G1 E-5 F1800 ; retract
G1 X46 Y30.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X46 Y30.9 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X47 Y30.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X47 Y32.5 F7200 ; move to start
G1 X47 Y34.5 F7200 ; move to start
G1 X47 Y32.5 E0.0798 F1200 ; 4
G1 X49 Y32.5 E0.0798 F1200 ; 4
G1 X49 Y34.5 F7200 ; move to start
G1 X49 Y32.5 E0.0798 F1200 ; 4
G1 X49 Y30.5 E0.0798 F1200 ; 4
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y36.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X45 Y36.5 E0.0798 F1200 ; 0
G1 X45 Y38.5 E0.0798 F1200 ; 0
G1 X45 Y40.5 E0.0798 F1200 ; 0
G1 X43 Y40.5 E0.0798 F1200 ; 0
G1 X43 Y38.5 E0.0798 F1200 ; 0
G1 X43 Y36.5 E0.0798 F1200 ; 0
G1 E-5 F1800 ; retract
G1 X46 Y36.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X46 Y36.9 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X47 Y36.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X47 Y38.5 F7200 ; move to start
G1 X47 Y40.5 F7200 ; move to start
G1 X47 Y38.5 E0.0798 F1200 ; 4
G1 X49 Y38.5 E0.0798 F1200 ; 4
G1 X49 Y40.5 F7200 ; move to start
G1 X49 Y38.5 E0.0798 F1200 ; 4
G1 X49 Y36.5 E0.0798 F1200 ; 4
G1 E-5 F1800 ; retract
G1 X50 Y36.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X50 Y38.5 F7200 ; move to start
G1 X50 Y40.5 F7200 ; move to start
G1 X52 Y40.5 E0.0798 F1200 ; 2
G1 X52 Y38.5 E0.0798 F1200 ; 2
G1 X50 Y38.5 E0.0798 F1200 ; 2
G1 X50 Y36.5 E0.0798 F1200 ; 2
G1 X52 Y36.5 E0.0798 F1200 ; 2
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y42.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X45 Y42.5 E0.0798 F1200 ; 0
G1 X45 Y44.5 E0.0798 F1200 ; 0
G1 X45 Y46.5 E0.0798 F1200 ; 0
G1 X43 Y46.5 E0.0798 F1200 ; 0
G1 X43 Y44.5 E0.0798 F1200 ; 0
G1 X43 Y42.5 E0.0798 F1200 ; 0
G1 E-5 F1800 ; retract
G1 X46 Y42.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X46 Y42.9 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X47 Y42.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X47 Y44.5 F7200 ; move to start
G1 X47 Y46.5 F7200 ; move to start
G1 X47 Y44.5 E0.0798 F1200 ; 4
G1 X49 Y44.5 E0.0798 F1200 ; 4
G1 X49 Y46.5 F7200 ; move to start
G1 X49 Y44.5 E0.0798 F1200 ; 4
G1 X49 Y42.5 E0.0798 F1200 ; 4
G1 E-5 F1800 ; retract
G1 X50 Y42.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X50 Y44.5 F7200 ; move to start
G1 X50 Y46.5 F7200 ; move to start
G1 X50 Y44.5 E0.0798 F1200 ; 4
G1 X52 Y44.5 E0.0798 F1200 ; 4
G1 X52 Y46.5 F7200 ; move to start
G1 X52 Y44.5 E0.0798 F1200 ; 4
G1 X52 Y42.5 E0.0798 F1200 ; 4
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y48.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X45 Y48.5 E0.0798 F1200 ; 0
G1 X45 Y50.5 E0.0798 F1200 ; 0
G1 X45 Y52.5 E0.0798 F1200 ; 0
G1 X43 Y52.5 E0.0798 F1200 ; 0
G1 X43 Y50.5 E0.0798 F1200 ; 0
G1 X43 Y48.5 E0.0798 F1200 ; 0
G1 E-5 F1800 ; retract
G1 X46 Y48.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X46 Y48.9 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X47 Y48.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X47 Y50.5 F7200 ; move to start
G1 X47 Y52.5 F7200 ; move to start
G1 X47 Y50.5 E0.0798 F1200 ; 4
G1 X49 Y50.5 E0.0798 F1200 ; 4
G1 X49 Y52.5 F7200 ; move to start
G1 X49 Y50.5 E0.0798 F1200 ; 4
G1 X49 Y48.5 E0.0798 F1200 ; 4
G1 E-5 F1800 ; retract
G1 X50 Y48.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X50 Y50.5 F7200 ; move to start
G1 X52 Y50.5 E0.0798 F1200 ; 6
G1 X52 Y48.5 E0.0798 F1200 ; 6
G1 X50 Y48.5 E0.0798 F1200 ; 6
G1 X50 Y50.5 E0.0798 F1200 ; 6
G1 X50 Y52.5 E0.0798 F1200 ; 6
G1 X52 Y52.5 E0.0798 F1200 ; 6
G1 E-5 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X43 Y54.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E5 F1800 ; un-retract
G1 X45 Y54.5 E0.0798 F1200 ; 0
G1 X45 Y56.5 E0.0798 F1200 ; 0
G1 X45 Y58.5 E0.0798 F1200 ; 0
G1 X43 Y58.5 E0.0798 F1200 ; 0
G1 X43 Y56.5 E0.0798 F1200 ; 0
G1 X43 Y54.5 E0.0798 F1200 ; 0
G1 E-5 F1800 ; retract
G1 X46 Y54.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X46 Y54.9 E0.016 F1200 ; dot
G1 E-5 F1800 ; retract
G1 X47 Y54.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X47 Y56.5 F7200 ; move to start
G1 X47 Y58.5 F7200 ; move to start
G1 X47 Y56.5 E0.0798 F1200 ; 4
G1 X49 Y56.5 E0.0798 F1200 ; 4
G1 X49 Y58.5 F7200 ; move to start
G1 X49 Y56.5 E0.0798 F1200 ; 4
G1 X49 Y54.5 E0.0798 F1200 ; 4
G1 E-5 F1800 ; retract
G1 X50 Y54.5 F7200 ; move to start
G1 E5 F1800 ; un-retract
G1 X50 Y56.5 F7200 ; move to start
G1 X52 Y56.5 E0.0798 F1200 ; 8
G1 X52 Y54.5 E0.0798 F1200 ; 8
G1 X50 Y54.5 E0.0798 F1200 ; 8
G1 X50 Y56.5 E0.0798 F1200 ; 8
G1 X50 Y58.5 E0.0798 F1200 ; 8
G1 X52 Y58.5 E0.0798 F1200 ; 8
G1 X52 Y56.5 E0.0798 F1200 ; 8
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