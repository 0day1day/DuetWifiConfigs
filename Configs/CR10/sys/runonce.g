; run-once.g
; called after config.g. When it has been executed, it is automatically deleted!
;
; generated by RepRapFirmware Configuration Tool v2.1.8 on Sun Mar 08 2020 15:25:22 GMT+0100 (hora estándar de Europa central)
M552 S0                                       ; disable network
G4 P500                                       ; wait half a second
M552 S1                                       ; enable network
G4 P1000                                      ; wait a second
M587 S"SSID" P"WIFIPASSWORD" ; configure WiFi
M552 S1                                       ; enable network

