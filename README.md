# 3D_Printer_Bed_Leveling_Assist

When manually leveling each 4 corners of the heat bed using either A4 paper or a feeler guage, it's common to physically move the bed or carriage to the corners. This is first inconsistent repeatability as you are unlikely to move it to the same spot when doing multiple passes. More importantly, moving the bed/carriage makes the motor backfeed into the stepper drivers. This isn't usually a big deal, but it's better practice to avoid that.

This gcode heats the bed first, as beds expand when heated and the distance between the nozzle and the bed will get shorter. It then moves around coordinates (15,15) , (205,15) , (205,205) , (15,205) in that order, twice. It will not proceed to the next corner until you press enter on your LCD.
