#!/usr/bin/env wish
#--------------------------------------------
# Script to generate .mag files from .lef    
#--------------------------------------------
tech unlock *
lef datestamp 1663361622
lef read $PDKPATH/libs.ref/lef/sky130_fd_io/sky130_fd_io.lef
lef read $PDKPATH/libs.ref/lef/sky130_fd_io/sky130_ef_io.lef
puts stdout "Annotating cells from CDL/SPICE"
catch {readspice $PDKPATH/libs.ref/cdl/sky130_fd_io/sky130_ef_io.cdl}
load sky130_fd_io__corner_bus_overlay
writeall force
puts stdout "Done."
quit -noprompt
