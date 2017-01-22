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
set output "plot/pu_enricht.nodecay.png"
set ylabel "Pu fraction in the LWR MOX fuel [%]"
plot [0.25:300][5:15] 'PWR/mixer/nodecay/Fuel_PU_enricht.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "blue" title "fix no-decay", \
                      'PWR/fuelfab/nodecay/Fuel_PU_enricht.dat'  every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "dark-green" title "Pu-eq no-decay", \
                      'PWR/neural/nodecay/recipe/Fuel_PU_enricht.dat'  every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "NN no-decay"

#PLOT J1 contribution stograe:
unset key 
set output "plot/pu_enricht.nodecay.nobox.png"
set ylabel "Pu fraction in the LWR MOX fuel [%]"
plot [0.25:300][5:15] 'PWR/mixer/nodecay/Fuel_PU_enricht.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "blue" title "fix no-decay", \
                      'PWR/fuelfab/nodecay/Fuel_PU_enricht.dat'  every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "dark-green" title "Pu-eq no-decay", \
                      'PWR/neural/nodecay/recipe/Fuel_PU_enricht.dat'  every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "NN no-decay"

#PLOT J1 contribution stograe:
set key bottom right
set output "plot/pu_enricht.decay.png"
set ylabel "Pu fraction in the LWR MOX fuel [%]"
plot [0.25:300][5:15] 'PWR/mixer/nodecay/Fuel_PU_enricht.dat'    every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "blue" title "fix no-decay", \
                      'PWR/mixer/decay/Fuel_PU_enricht.dat'      every ::1 using 1:2 with  lines lw 2 lt 2 dt 2 lc rgb "blue" title "fix decay", \
                      'PWR/fuelfab/nodecay/Fuel_PU_enricht.dat'  every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "dark-green" title "Pu-eq no-decay", \
                      'PWR/fuelfab/decay/Fuel_PU_enricht.dat'    every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "dark-green"title "Pu-eq decay", \
                      'PWR/neural/nodecay/recipe/Fuel_PU_enricht.dat'   every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "NN no-decay", \
                      'PWR/neural/decay/recipe/Fuel_PU_enricht.dat'     every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" title "NN decay"

#PLOT J1 contribution stograe:
unset key 
set output "plot/pu_enricht.decay.nobox.png"
set ylabel "Pu fraction in the LWR MOX fuel [%]"
plot [0.25:300][5:15] 'PWR/mixer/nodecay/Fuel_PU_enricht.dat'    every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "blue" title "fix no-decay", \
                      'PWR/mixer/decay/Fuel_PU_enricht.dat'      every ::1 using 1:2 with  lines lw 2 lt 2 dt 2 lc rgb "blue" title "fix decay", \
                      'PWR/fuelfab/nodecay/Fuel_PU_enricht.dat'  every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "dark-green" title "Pu-eq no-decay", \
                      'PWR/fuelfab/decay/Fuel_PU_enricht.dat'    every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "dark-green"title "Pu-eq decay", \
                      'PWR/neural/nodecay/recipe/Fuel_PU_enricht.dat'   every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "NN no-decay", \
                      'PWR/neural/decay/recipe/Fuel_PU_enricht.dat'     every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" title "NN decay"


#PLOT J1 contribution stograe:
set key bottom right
set output "plot/pu_enricht.depletion.png"
set ylabel "Pu fraction in the LWR MOX fuel [%]"
plot [0.25:300][5:15] 'PWR/neural/nodecay/recipe/Fuel_PU_enricht.dat'   every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "NN no-decay recipe", \
                      'PWR/neural/decay/recipe/Fuel_PU_enricht.dat'     every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" title "NN decay recipe", \
                      'PWR/neural/nodecay/depletion/Fuel_PU_enricht.dat'   every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "orange" title "NN no-decay depletion", \
                      'PWR/neural/decay/depletion/Fuel_PU_enricht.dat'     every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "orange" title "NN decay depletion"
#PLOT J1 contribution stograe:
unset key 
set output "plot/pu_enricht.depletion.nobox.png"
set ylabel "Pu fraction in the LWR MOX fuel [%]"
plot [0.25:300][5:15] 'PWR/neural/nodecay/recipe/Fuel_PU_enricht.dat'   every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "NN no-decay recipe", \
                      'PWR/neural/decay/recipe/Fuel_PU_enricht.dat'     every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" title "NN decay recipe", \
                      'PWR/neural/nodecay/depletion/Fuel_PU_enricht.dat'   every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "orange" title "NN no-decay depletion", \
                      'PWR/neural/decay/depletion/Fuel_PU_enricht.dat'     every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "orange" title "NN decay depletion"




set key center right
#set key width +2
#set key height +1
set output "plot/mixer.in.MOX.pu_composition.png"
set ylabel "Plutonium composition [%]"
plot [0.25:300] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "nodecay" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "decay" , \
  'PWR/mixer/nodecay/Fuel_Pu.composition.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'PWR/mixer/nodecay/Fuel_Pu.composition.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'PWR/mixer/nodecay/Fuel_Pu.composition.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'PWR/mixer/nodecay/Fuel_Pu.composition.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'PWR/mixer/nodecay/Fuel_Pu.composition.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'PWR/mixer/decay/Fuel_Pu.composition.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'PWR/mixer/decay/Fuel_Pu.composition.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'PWR/mixer/decay/Fuel_Pu.composition.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'PWR/mixer/decay/Fuel_Pu.composition.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'PWR/mixer/decay/Fuel_Pu.composition.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'PWR/mixer/decay/Fuel_Pu.composition.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 
unset key
#set key width +2
#set key height +1
set output "plot/mixer.in.MOX.pu_composition_nobox.png"
set ylabel "Plutonium composition [%]"
plot [0.25:300] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "nodecay" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "decay" , \
  'PWR/mixer/nodecay/Fuel_Pu.composition.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'PWR/mixer/nodecay/Fuel_Pu.composition.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'PWR/mixer/nodecay/Fuel_Pu.composition.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'PWR/mixer/nodecay/Fuel_Pu.composition.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'PWR/mixer/nodecay/Fuel_Pu.composition.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'PWR/mixer/decay/Fuel_Pu.composition.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'PWR/mixer/decay/Fuel_Pu.composition.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'PWR/mixer/decay/Fuel_Pu.composition.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'PWR/mixer/decay/Fuel_Pu.composition.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'PWR/mixer/decay/Fuel_Pu.composition.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'PWR/mixer/decay/Fuel_Pu.composition.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 


set key center right
#set key width +2
#set key height +1
set output "plot/mixer.in.MOX.pu_amount.png"
set ylabel "Plutonium amount [%]"
plot [0.25:300] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "nodecay" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "decay" , \
  'PWR/mixer/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'PWR/mixer/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'PWR/mixer/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'PWR/mixer/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'PWR/mixer/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'PWR/mixer/decay/Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'PWR/mixer/decay/Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'PWR/mixer/decay/Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'PWR/mixer/decay/Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'PWR/mixer/decay/Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'PWR/mixer/decay/Fuel_Pu.amount.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 
unset key
#set key width +2
#set key height +1
set output "plot/mixer.in.MOX.pu_amount_nobox.png"
set ylabel "Plutonium amount [%]"
plot [0.25:300] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "nodecay" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "decay" , \
  'PWR/mixer/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'PWR/mixer/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'PWR/mixer/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'PWR/mixer/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'PWR/mixer/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'PWR/mixer/decay/Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'PWR/mixer/decay/Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'PWR/mixer/decay/Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'PWR/mixer/decay/Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'PWR/mixer/decay/Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'PWR/mixer/decay/Fuel_Pu.amount.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 


set key center right
#set key width +2
#set key height +1
set output "plot/fuelfab.in.MOX.pu_composition.png"
set ylabel "Plutonium composition [%]"
plot [0.25:300] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "nodecay" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "decay" , \
  'PWR/fuelfab/nodecay/Fuel_Pu.composition.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'PWR/fuelfab/nodecay/Fuel_Pu.composition.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'PWR/fuelfab/nodecay/Fuel_Pu.composition.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'PWR/fuelfab/nodecay/Fuel_Pu.composition.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'PWR/fuelfab/nodecay/Fuel_Pu.composition.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'PWR/fuelfab/decay/Fuel_Pu.composition.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'PWR/fuelfab/decay/Fuel_Pu.composition.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'PWR/fuelfab/decay/Fuel_Pu.composition.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'PWR/fuelfab/decay/Fuel_Pu.composition.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'PWR/fuelfab/decay/Fuel_Pu.composition.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'PWR/fuelfab/decay/Fuel_Pu.composition.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 
unset key
#set key width +2
#set key height +1
set output "plot/fuelfab.in.MOX.pu_composition_nobox.png"
set ylabel "Plutonium composition [%]"
plot [0.25:300] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "nodecay" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "decay" , \
  'PWR/fuelfab/nodecay/Fuel_Pu.composition.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'PWR/fuelfab/nodecay/Fuel_Pu.composition.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'PWR/fuelfab/nodecay/Fuel_Pu.composition.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'PWR/fuelfab/nodecay/Fuel_Pu.composition.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'PWR/fuelfab/nodecay/Fuel_Pu.composition.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'PWR/fuelfab/decay/Fuel_Pu.composition.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'PWR/fuelfab/decay/Fuel_Pu.composition.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'PWR/fuelfab/decay/Fuel_Pu.composition.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'PWR/fuelfab/decay/Fuel_Pu.composition.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'PWR/fuelfab/decay/Fuel_Pu.composition.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'PWR/fuelfab/decay/Fuel_Pu.composition.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 


set key center right
#set key width +2
#set key height +1
set output "plot/fuelfab.in.MOX.pu_amount.png"
set ylabel "Plutonium amount [%]"
plot [0.25:300] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "nodecay" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "decay" , \
  'PWR/fuelfab/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'PWR/fuelfab/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'PWR/fuelfab/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'PWR/fuelfab/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'PWR/fuelfab/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'PWR/fuelfab/decay/Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'PWR/fuelfab/decay/Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'PWR/fuelfab/decay/Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'PWR/fuelfab/decay/Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'PWR/fuelfab/decay/Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'PWR/fuelfab/decay/Fuel_Pu.amount.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 
unset key
#set key width +2
#set key height +1
set output "plot/fuelfab.in.MOX.pu_amount_nobox.png"
set ylabel "Plutonium amount [%]"
plot [0.25:300] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "nodecay" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "decay" , \
  'PWR/fuelfab/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'PWR/fuelfab/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'PWR/fuelfab/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'PWR/fuelfab/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'PWR/fuelfab/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'PWR/fuelfab/decay/Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'PWR/fuelfab/decay/Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'PWR/fuelfab/decay/Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'PWR/fuelfab/decay/Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'PWR/fuelfab/decay/Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'PWR/fuelfab/decay/Fuel_Pu.amount.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 






set key center right
#set key width +2
#set key height +1
set output "plot/neuron.recipe.in.MOX.pu_composition.png"
set ylabel "Plutonium composition [%]"
plot [0.25:300] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "nodecay" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "decay" , \
  'PWR/neural/nodecay/recipe/Fuel_Pu.composition.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'PWR/neural/nodecay/recipe/Fuel_Pu.composition.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'PWR/neural/nodecay/recipe/Fuel_Pu.composition.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'PWR/neural/nodecay/recipe/Fuel_Pu.composition.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'PWR/neural/nodecay/recipe/Fuel_Pu.composition.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'PWR/neural/decay/recipe/Fuel_Pu.composition.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'PWR/neural/decay/recipe/Fuel_Pu.composition.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'PWR/neural/decay/recipe/Fuel_Pu.composition.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'PWR/neural/decay/recipe/Fuel_Pu.composition.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'PWR/neural/decay/recipe/Fuel_Pu.composition.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'PWR/neural/decay/recipe/Fuel_Pu.composition.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 
unset key
#set key width +2
#set key height +1
set output "plot/neuron.recipe.in.MOX.pu_composition_nobox.png"
set ylabel "Plutonium composition [%]"
plot [0.25:300] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "nodecay" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "decay" , \
  'PWR/neural/nodecay/recipe/Fuel_Pu.composition.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'PWR/neural/nodecay/recipe/Fuel_Pu.composition.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'PWR/neural/nodecay/recipe/Fuel_Pu.composition.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'PWR/neural/nodecay/recipe/Fuel_Pu.composition.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'PWR/neural/nodecay/recipe/Fuel_Pu.composition.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'PWR/neural/decay/recipe/Fuel_Pu.composition.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'PWR/neural/decay/recipe/Fuel_Pu.composition.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'PWR/neural/decay/recipe/Fuel_Pu.composition.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'PWR/neural/decay/recipe/Fuel_Pu.composition.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'PWR/neural/decay/recipe/Fuel_Pu.composition.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'PWR/neural/decay/recipe/Fuel_Pu.composition.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 


set key center right
#set key width +2
#set key height +1
set output "plot/neuron.recipe.in.MOX.pu_amount.png"
set ylabel "Plutonium amount [%]"
plot [0.25:300] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "nodecay" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "decay" , \
  'PWR/neural/nodecay/recipe/Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'PWR/neural/nodecay/recipe/Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'PWR/neural/nodecay/recipe/Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'PWR/neural/nodecay/recipe/Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'PWR/neural/nodecay/recipe/Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'PWR/neural/decay/recipe/Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'PWR/neural/decay/recipe/Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'PWR/neural/decay/recipe/Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'PWR/neural/decay/recipe/Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'PWR/neural/decay/recipe/Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'PWR/neural/decay/recipe/Fuel_Pu.amount.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 
unset key
#set key width +2
#set key height +1
set output "plot/neuron.recipe.in.MOX.pu_amount_nobox.png"
set ylabel "Plutonium amount [%]"
plot [0.25:300] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "nodecay" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "decay" , \
  'PWR/neural/nodecay/recipe/Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'PWR/neural/nodecay/recipe/Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'PWR/neural/nodecay/recipe/Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'PWR/neural/nodecay/recipe/Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'PWR/neural/nodecay/recipe/Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'PWR/neural/decay/recipe/Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'PWR/neural/decay/recipe/Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'PWR/neural/decay/recipe/Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'PWR/neural/decay/recipe/Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'PWR/neural/decay/recipe/Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'PWR/neural/decay/recipe/Fuel_Pu.amount.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 




set key center right
#set key width +2
#set key height +1
set output "plot/neuron.depletion.in.MOX.pu_composition.png"
set ylabel "Plutonium composition [%]"
plot [0.25:300] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "nodecay" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "decay" , \
  'PWR/neural/nodecay/depletion/Fuel_Pu.composition.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'PWR/neural/nodecay/depletion/Fuel_Pu.composition.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'PWR/neural/nodecay/depletion/Fuel_Pu.composition.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'PWR/neural/nodecay/depletion/Fuel_Pu.composition.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'PWR/neural/nodecay/depletion/Fuel_Pu.composition.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'PWR/neural/decay/depletion/Fuel_Pu.composition.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'PWR/neural/decay/depletion/Fuel_Pu.composition.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'PWR/neural/decay/depletion/Fuel_Pu.composition.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'PWR/neural/decay/depletion/Fuel_Pu.composition.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'PWR/neural/decay/depletion/Fuel_Pu.composition.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'PWR/neural/decay/depletion/Fuel_Pu.composition.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 
unset key
#set key width +2
#set key height +1
set output "plot/neuron.depletion.in.MOX.pu_composition_nobox.png"
set ylabel "Plutonium composition [%]"
plot [0.25:300] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "nodecay" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "decay" , \
  'PWR/neural/nodecay/depletion/Fuel_Pu.composition.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'PWR/neural/nodecay/depletion/Fuel_Pu.composition.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'PWR/neural/nodecay/depletion/Fuel_Pu.composition.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'PWR/neural/nodecay/depletion/Fuel_Pu.composition.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'PWR/neural/nodecay/depletion/Fuel_Pu.composition.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'PWR/neural/decay/depletion/Fuel_Pu.composition.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'PWR/neural/decay/depletion/Fuel_Pu.composition.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'PWR/neural/decay/depletion/Fuel_Pu.composition.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'PWR/neural/decay/depletion/Fuel_Pu.composition.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'PWR/neural/decay/depletion/Fuel_Pu.composition.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'PWR/neural/decay/depletion/Fuel_Pu.composition.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 


set key center right
#set key width +2
#set key height +1
set output "plot/neuron.depletion.in.MOX.pu_amount.png"
set ylabel "Plutonium amount [%]"
plot [0.25:300] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "nodecay" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "decay" , \
  'PWR/neural/nodecay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'PWR/neural/nodecay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'PWR/neural/nodecay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'PWR/neural/nodecay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'PWR/neural/nodecay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'PWR/neural/decay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'PWR/neural/decay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'PWR/neural/decay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'PWR/neural/decay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'PWR/neural/decay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'PWR/neural/decay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 
unset key
#set key width +2
#set key height +1
set output "plot/neuron.depletion.in.MOX.pu_amount_nobox.png"
set ylabel "Plutonium amount [%]"
plot [0.25:300] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "nodecay" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "decay" , \
  'PWR/neural/nodecay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'PWR/neural/nodecay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'PWR/neural/nodecay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'PWR/neural/nodecay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'PWR/neural/nodecay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'PWR/neural/decay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'PWR/neural/decay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'PWR/neural/decay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'PWR/neural/decay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'PWR/neural/decay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'PWR/neural/decay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle

















































set key center right
#set key width +2
#set key height +1
set output "plot/neuron.recipe.out.MOX.pu_composition.png"
set ylabel "Plutonium composition [%]"
plot [0.25:300] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "nodecay" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "decay" , \
  'PWR/neural/nodecay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'PWR/neural/nodecay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'PWR/neural/nodecay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'PWR/neural/nodecay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'PWR/neural/nodecay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'PWR/neural/nodecay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:7 with lines lw 2 dt 1 lc rgb "dark-pink" title "^{241}Am", \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 
unset key
#set key width +2
#set key height +1
set output "plot/neuron.recipe.out.MOX.pu_composition_nobox.png"
set ylabel "Plutonium composition [%]"
plot [0.25:300] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "nodecay" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "decay" , \
  'PWR/neural/nodecay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'PWR/neural/nodecay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'PWR/neural/nodecay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'PWR/neural/nodecay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'PWR/neural/nodecay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'PWR/neural/nodecay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:7 with lines lw 2 dt 1 lc rgb "dark-pink" title "^{241}Am", \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 


set key center right
#set key width +2
#set key height +1
set output "plot/neuron.recipe.out.MOX.pu_amount.png"
set ylabel "Plutonium amount [%]"
plot [0.25:300] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "nodecay" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "decay" , \
  'PWR/neural/nodecay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'PWR/neural/nodecay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'PWR/neural/nodecay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'PWR/neural/nodecay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'PWR/neural/nodecay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'PWR/neural/nodecay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:7 with lines lw 2 dt 1 lc rgb "dark-pink" title "^{241}Am", \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 
unset key
#set key width +2
#set key height +1
set output "plot/neuron.recipe.out.MOX.pu_amount_nobox.png"
set ylabel "Plutonium amount [%]"
plot [0.25:300] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "nodecay" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "decay" , \
  'PWR/neural/nodecay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'PWR/neural/nodecay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'PWR/neural/nodecay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'PWR/neural/nodecay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'PWR/neural/nodecay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'PWR/neural/nodecay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:7 with lines lw 2 dt 1 lc rgb "dark-pink" title "^{241}Am", \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 




set key center right
#set key width +2
#set key height +1
set output "plot/neuron.depletion.out.MOX.pu_composition.png"
set ylabel "Plutonium composition [%]"
plot [0.25:300] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "nodecay" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "decay" , \
  'PWR/neural/nodecay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'PWR/neural/nodecay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'PWR/neural/nodecay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'PWR/neural/nodecay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'PWR/neural/nodecay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'PWR/neural/nodecay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:7 with lines lw 2 dt 1 lc rgb "dark-pink" title "^{241}Am", \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 
unset key
#set key width +2
#set key height +1
set output "plot/neuron.depletion.out.MOX.pu_composition_nobox.png"
set ylabel "Plutonium composition [%]"
plot [0.25:300] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "nodecay" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "decay" , \
  'PWR/neural/nodecay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'PWR/neural/nodecay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'PWR/neural/nodecay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'PWR/neural/nodecay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'PWR/neural/nodecay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'PWR/neural/nodecay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:7 with lines lw 2 dt 1 lc rgb "dark-pink" title "^{241}Am", \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 


set key center right
#set key width +2
#set key height +1
set output "plot/neuron.depletion.out.MOX.pu_amount.png"
set ylabel "Plutonium amount [%]"
plot [0.25:300] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "nodecay" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "decay" , \
  'PWR/neural/nodecay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'PWR/neural/nodecay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'PWR/neural/nodecay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'PWR/neural/nodecay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'PWR/neural/nodecay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'PWR/neural/nodecay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:7 with lines lw 2 dt 1 lc rgb "dark-pink" title "^{241}Am", \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 
unset key
#set key width +2
#set key height +1
set output "plot/neuron.depletion.out.MOX.pu_amount_nobox.png"
set ylabel "Plutonium amount [%]"
plot [0.25:300] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "nodecay" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "decay" , \
  'PWR/neural/nodecay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'PWR/neural/nodecay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'PWR/neural/nodecay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'PWR/neural/nodecay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'PWR/neural/nodecay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'PWR/neural/nodecay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:7 with lines lw 2 dt 1 lc rgb "dark-pink" title "^{241}Am", \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 






set key center right
#set key width +2
#set key height +1
set output "plot/neuron.dep_vs_rec.in.MOX.pu_amount.png"
set ylabel "Plutonium amount [%]"
plot [0.25:300] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "recipe" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "depletion" , \
  'PWR/mixer/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'PWR/mixer/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'PWR/mixer/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'PWR/mixer/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'PWR/mixer/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'PWR/mixer/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:7 with lines lw 2 dt 1 lc rgb "dark-pink" title "^{241}Am", \
  'PWR/neural/decay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'PWR/neural/decay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'PWR/neural/decay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'PWR/neural/decay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'PWR/neural/decay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'PWR/neural/decay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 
unset key
#set key width +2
#set key height +1
set output "plot/neuron.dep_vs_rec.in.MOX.pu_amount_nobox.png"
set ylabel "Plutonium amount [%]"
plot [0.25:300] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "recipe" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "depletion" , \
  'PWR/mixer/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'PWR/mixer/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'PWR/mixer/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'PWR/mixer/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'PWR/mixer/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'PWR/mixer/nodecay/Fuel_Pu.amount.dat' every ::1 using 1:7 with lines lw 2 dt 1 lc rgb "dark-pink" title "^{241}Am", \
  'PWR/neural/decay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'PWR/neural/decay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'PWR/neural/decay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'PWR/neural/decay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'PWR/neural/decay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'PWR/neural/decay/depletion/Fuel_Pu.amount.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 





set key center right
#set key width +2
#set key height +1
set output "plot/neuron.dep_vs_rec.out.MOX.pu_amount.png"
set ylabel "Plutonium amount [%]"
plot [0.25:300][0:8] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "recipe" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "depletion" , \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:7 with lines lw 2 dt 1 lc rgb "dark-pink" title "^{241}Am", \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 
unset key
#set key width +2
#set key height +1
set output "plot/neuron.dep_vs_rec.out.MOX.pu_amount_nobox.png"
set ylabel "Plutonium amount [%]"
plot [0.25:300][0:8] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "recipe" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "depletion" , \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.amount.dat' every ::1 using 1:7 with lines lw 2 dt 1 lc rgb "dark-pink" title "^{241}Am", \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.amount.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 






set key center right
#set key width +2
#set key height +1
set output "plot/neuron.dep_vs_rec.out.MOX.pu_composition.png"
set ylabel "Plutonium composition [%]"
plot [0.25:300] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "recipe" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "depletion" , \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:7 with lines lw 2 dt 1 lc rgb "dark-pink" title "^{241}Am", \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 
unset key
#set key width +2
#set key height +1
set output "plot/neuron.dep_vs_rec.out.MOX.pu_composition_nobox.png"
set ylabel "Plutonium composition [%]"
plot [0.25:300] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "recipe" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "depletion" , \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'PWR/neural/decay/recipe/Spent_Fuel_Pu.composition.dat' every ::1 using 1:7 with lines lw 2 dt 1 lc rgb "dark-pink" title "^{241}Am", \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'PWR/neural/decay/depletion/Spent_Fuel_Pu.composition.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 
