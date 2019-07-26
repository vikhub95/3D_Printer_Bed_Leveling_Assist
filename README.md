# 3D_Printer_Bed_Leveling_Assist

A common manual bed leveling procedure includes sliding a piece of A4 paper between the nozzle and the bed as the nozzle is lowered until it just begins to grab the A4 paper. A feeler guage can be used for more precise results. This must be repeated with all 4 corners, so it's common to physically move the bed or carriage to the corners. Repeating probing at the exact same spots becomes highly improbably, especially when multiple passes are made. 

More importantly, moving the bed/carriage makes the motor backfeed voltage into their respective drivers. This usually doesn't immediately damage the drivers; however, a quick movement or constant use has potential to damage the drivers. 

This gcode heats the bed first, as beds expand when heated, causing the distance between the nozzle and the bed to decrease. It then moves around coordinates (15,15) , (205,15) , (205,205) , (15,205) in that order, twice. It will not proceed to the next corner until the encoder is pressed on the LCD.
