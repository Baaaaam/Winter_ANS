#!/usr/bin/env gnuplot

set grid xtics ytics
show grid
set key center right autotitle columnheader box
set terminal png size 1000,750 enhanced font "Helvetica,20"
show xlabel
show ylabel

set xlabel "Date [y]"
set ylabel "Pu contribution [t/GWey]"



#PLOT J1 contribution stograe:
set key bottom right
set output "nodecay.pu_contribution.png"
set ylabel "Pu fraction in the LWR MOX fuel [%]"
plot [0.25:300][5:15] 'PWR/mixer/nodecay/Fuel_PU_enricht.dat' every ::1 using 1:2 with lines lw 2 dashtype 1 lc rgb "blue" title "fix no-decay", \
                      'PWR/fuelfab/nodecay/Fuel_PU_enricht.dat'  every ::1 using 1:2 with lines lw 2 dashtype 1 lc rgb "dark-green" title "Pu-eq no-decay", \
                      'PWR/neural/nodecay/recipe/Fuel_PU_enricht.dat'  every ::1 using 1:2 with lines lw 2 dashtype 1 lc rgb "red" title "NN no-decay"

#PLOT J1 contribution stograe:
set key bottom right
set output "decay.pu_contribution.png"
set ylabel "Pu fraction in the LWR MOX fuel [%]"
plot [0.25:300][5:15] 'PWR/mixer/nodecay/Fuel_PU_enricht.dat'    every ::1 using 1:2 with lines lw 2 dashtype 1 lc rgb "blue" title "fix no-decay", \
                      'PWR/mixer/decay/Fuel_PU_enricht.dat'      every ::1 using 1:2 with  lines lw 2 lt 2 dt 2 lc rgb "blue" title "fix decay", \
                      'PWR/fuelfab/nodecay/Fuel_PU_enricht.dat'  every ::1 using 1:2 with lines lw 2 dashtype 1 lc rgb "dark-green" title "Pu-eq no-decay", \
                      'PWR/fuelfab/decay/Fuel_PU_enricht.dat'    every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "dark-green"title "Pu-eq decay", \
                      'PWR/neural/nodecay/recipe/Fuel_PU_enricht.dat'   every ::1 using 1:2 with lines lw 2 dashtype 1 lc rgb "red" title "NN no-decay", \
                      'PWR/neural/nodecay/depletion/Fuel_PU_enricht.dat'     every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" title "NN decay"



