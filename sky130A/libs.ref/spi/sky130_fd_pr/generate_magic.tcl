#!/usr/bin/env wish
#---------------------------------------------
# Script to generate SPICE library from GDS   
#---------------------------------------------
drc off
locking off
gds readonly true
gds flatten true
gds rescale false
tech unlock *
# Set the GDS input style to sky130(vendor).  This treats labels on the
# TXT purpose (5) as pins, which is unfortunately done in a lot of the
# vendor GDS files.
cif istyle sky130(vendor)
gds read /home/nataraj/projects/designmyic/cad/pdk/downloads/open_pdks/sky130/sky130A/libs.ref/gds/sky130_fd_pr/sky130_fd_pr__rf_npn_11v0_W1p00L1p00.gds
gds read /home/nataraj/projects/designmyic/cad/pdk/downloads/open_pdks/sky130/sky130A/libs.ref/gds/sky130_fd_pr/sky130_fd_pr__rf_pnp_05v5_W0p68L0p68.gds
gds read /home/nataraj/projects/designmyic/cad/pdk/downloads/open_pdks/sky130/sky130A/libs.ref/gds/sky130_fd_pr/sky130_fd_pr__rf_pnp_05v5_W3p40L3p40.gds
load /home/nataraj/projects/designmyic/cad/pdk/downloads/open_pdks/sky130/sky130A/libs.ref/gds/sky130_fd_pr/sky130_fd_pr__rf_npn_11v0_W1p00L1p00
ext2spice lvs
ext2spice subcircuit top on
set glist [cellname list top]
foreach cell $glist {
    load $cell
    puts stdout "Extracting cell $cell"
    extract all
    ext2spice
}
puts stdout "Done."
quit -noprompt
