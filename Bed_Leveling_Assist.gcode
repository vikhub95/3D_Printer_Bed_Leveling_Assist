; Bed Leveling Assist
; Viktor Silivanov 3/29/2019

M140 S50					; Begin heating bed to 50C
G21							; Metric values
G90							; Absolute positioning
G28 X0 Y0 F5000				; Home X & Y @5000mm/min (83mm/s)
G28 Z0						; Home Z
M190 S50					; Wait until bed is 50C before continuing

; Begin Loop 1
G1 Z5   					; Lift Z 5mm 
G1 X15 Y15 F7000			; Position 1 (Front - Left)
G1 Z0  
M0 Click To Continue  		; Pause and wait for the user
G1 Z5   					; Lift Z 5mm 
G1 X205 Y15 F7000			; Position 2 (Front - Right)
G1 Z0  
M0 Click To Continue  		; Pause and wait for the user
G1 Z5   					; Lift Z 5mm 
G1 X205 Y205 F7000			; Position 3 (Back - Right)
G1 Z0  
M0 Click To Continue  		; Pause and wait for the user
G1 Z5   					; Lift Z 5mm  
G1 X15 Y205 F7000			; Position 4 (Back - Left)
G1 Z0  
M0 Click To Continue  		; Pause and wait for the user

; Begin Loop 2
G1 Z5   					; Lift Z 5mm 
G1 X15 Y15 F7000 			; Position 1 (Front - Left)
G1 Z0  
M0 Click To Continue  		; Pause and wait for the user
G1 Z5   					; Lift Z 5mm 
G1 X205 Y15 F7000 			; Position 2 (Front - Right)
G1 Z0  
M0 Click To Continue  		; Pause and wait for the user
G1 Z5   					; Lift Z 5mm 
G1 X205 Y205 F7000 			; Position 3 (Back - Right)
G1 Z0  
M0 Click To Continue  		; Pause and wait for the user
G1 Z5   					; Lift Z 5mm 
G1 X15 Y205 F7000			; Position 4 (Back - Left)
G1 Z0  
M0 Click To Continue  		; Pause and wait for the use

; End park
M140 S0						; Disable heated bed
G1 Z5   					; Lift Z 5mm 
G28 X0 Y0 F7000				; Home X & Y @5000mm/min (83mm/s)
M84 						; Disable all motors