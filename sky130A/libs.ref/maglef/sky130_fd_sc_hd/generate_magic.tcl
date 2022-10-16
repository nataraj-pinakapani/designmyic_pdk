#!/usr/bin/env wish
#--------------------------------------------
# Script to generate .mag files from .lef    
#--------------------------------------------
tech unlock *
lef datestamp 1663361622
lef read $PDKPATH/libs.ref/lef/sky130_fd_sc_hd/sky130_fd_sc_hd.lef
lef read $PDKPATH/libs.ref/lef/sky130_fd_sc_hd/sky130_ef_sc_hd.lef
puts stdout "Annotating cells from CDL/SPICE"
catch {readspice $PDKPATH/libs.ref/cdl/sky130_fd_sc_hd/sky130_fd_sc_hd.cdl}
load sky130_fd_sc_hd__a2bb2o_1
writeall force
puts stdout "Done."
quit -noprompt
