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
plot [0.25:300][5:15] 'PWR/mixer/nodecay/Fuel_PU_enricht.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "blue" title "fix no-decay", \
                      'PWR/fuelfab/nodecay/Fuel_PU_enricht.dat'  every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "dark-green" title "Pu-eq no-decay", \
                      'PWR/neural/nodecay/recipe/Fuel_PU_enricht.dat'  every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "NN no-decay"

#PLOT J1 contribution stograe:
set key bottom right
set output "decay.pu_contribution.png"
set ylabel "Pu fraction in the LWR MOX fuel [%]"
plot [0.25:300][5:15] 'PWR/mixer/nodecay/Fuel_PU_enricht.dat'    every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "blue" title "fix no-decay", \
                      'PWR/mixer/decay/Fuel_PU_enricht.dat'      every ::1 using 1:2 with  lines lw 2 lt 2 dt 2 lc rgb "blue" title "fix decay", \
                      'PWR/fuelfab/nodecay/Fuel_PU_enricht.dat'  every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "dark-green" title "Pu-eq no-decay", \
                      'PWR/fuelfab/decay/Fuel_PU_enricht.dat'    every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "dark-green"title "Pu-eq decay", \
                      'PWR/neural/nodecay/recipe/Fuel_PU_enricht.dat'   every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "NN no-decay", \
                      'PWR/neural/decay/recipe/Fuel_PU_enricht.dat'     every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" title "NN decay"



#PLOT J1 contribution stograe:
set key bottom right
set output "depletion.pu_contribution.png"
set ylabel "Pu fraction in the LWR MOX fuel [%]"
plot [0.25:300][5:15] 'PWR/mixer/nodecay/Fuel_PU_enricht.dat'    every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "blue" title "fix no-decay", \
                      'PWR/mixer/decay/Fuel_PU_enricht.dat'      every ::1 using 1:2 with  lines lw 2 lt 2 dt 2 lc rgb "blue" title "fix decay", \
                      'PWR/fuelfab/nodecay/Fuel_PU_enricht.dat'  every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "dark-green" title "Pu-eq no-decay", \
                      'PWR/fuelfab/decay/Fuel_PU_enricht.dat'    every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "dark-green"title "Pu-eq decay", \
                      'PWR/neural/nodecay/recipe/Fuel_PU_enricht.dat'   every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "NN no-decay recipe", \
                      'PWR/neural/decay/recipe/Fuel_PU_enricht.dat'     every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" title "NN decay recipe", \
                      'PWR/neural/nodecay/depletion/Fuel_PU_enricht.dat'   every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "orange" title "NN no-decay depletion", \
                      'PWR/neural/decay/depletion/Fuel_PU_enricht.dat'     every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "orange" title "NN decay depletion"


#PLOT J1 contribution stograe:
unset key 
set output "nodecay.pu_contribution_nobox_.png"
set ylabel "Pu fraction in the LWR MOX fuel [%]"
plot [0.25:300][5:15] 'PWR/mixer/nodecay/Fuel_PU_enricht.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "blue" title "fix no-decay", \
                      'PWR/fuelfab/nodecay/Fuel_PU_enricht.dat'  every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "dark-green" title "Pu-eq no-decay", \
                      'PWR/neural/nodecay/recipe/Fuel_PU_enricht.dat'  every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "NN no-decay"

#PLOT J1 contribution stograe:
unset key 
set output "decay.pu_contribution_nobox_.png"
set ylabel "Pu fraction in the LWR MOX fuel [%]"
plot [0.25:300][5:15] 'PWR/mixer/nodecay/Fuel_PU_enricht.dat'    every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "blue" title "fix no-decay", \
                      'PWR/mixer/decay/Fuel_PU_enricht.dat'      every ::1 using 1:2 with  lines lw 2 lt 2 dt 2 lc rgb "blue" title "fix decay", \
                      'PWR/fuelfab/nodecay/Fuel_PU_enricht.dat'  every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "dark-green" title "Pu-eq no-decay", \
                      'PWR/fuelfab/decay/Fuel_PU_enricht.dat'    every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "dark-green"title "Pu-eq decay", \
                      'PWR/neural/nodecay/recipe/Fuel_PU_enricht.dat'   every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "NN no-decay", \
                      'PWR/neural/decay/recipe/Fuel_PU_enricht.dat'     every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" title "NN decay"



#PLOT J1 contribution stograe:
unset key 
set output "depletion.pu_contribution_nobox_.png"
set ylabel "Pu fraction in the LWR MOX fuel [%]"
plot [0.25:300][5:15] 'PWR/mixer/nodecay/Fuel_PU_enricht.dat'    every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "blue" title "fix no-decay", \
                      'PWR/mixer/decay/Fuel_PU_enricht.dat'      every ::1 using 1:2 with  lines lw 2 lt 2 dt 2 lc rgb "blue" title "fix decay", \
                      'PWR/fuelfab/nodecay/Fuel_PU_enricht.dat'  every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "dark-green" title "Pu-eq no-decay", \
                      'PWR/fuelfab/decay/Fuel_PU_enricht.dat'    every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "dark-green"title "Pu-eq decay", \
                      'PWR/neural/nodecay/recipe/Fuel_PU_enricht.dat'   every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "NN no-decay recipe", \
                      'PWR/neural/decay/recipe/Fuel_PU_enricht.dat'     every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" title "NN decay recipe", \
                      'PWR/neural/nodecay/depletion/Fuel_PU_enricht.dat'   every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "orange" title "NN no-decay depletion", \
                      'PWR/neural/decay/depletion/Fuel_PU_enricht.dat'     every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "orange" title "NN decay depletion"




set key center right
#set key width +2
#set key height +1
set output "MOX.pu_composition.png"
set ylabel "Plutonium composition [%]"
plot [0.25:300][0:75] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "NN decay recipe" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "NN decay depletion" , \
  'composition_recipe_Fuel_PU_enricht.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'composition_recipe_Fuel_PU_enricht.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'composition_recipe_Fuel_PU_enricht.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'composition_recipe_Fuel_PU_enricht.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'composition_recipe_Fuel_PU_enricht.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'composition_recipe_Fuel_PU_enricht.dat' every ::1 using 1:7 with lines lw 2 dt 1 lc rgb "dark-pink" title "^{241}Am", \
  'composition_depletion_Fuel_PU_enricht.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'composition_depletion_Fuel_PU_enricht.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'composition_depletion_Fuel_PU_enricht.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'composition_depletion_Fuel_PU_enricht.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'composition_depletion_Fuel_PU_enricht.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'composition_depletion_Fuel_PU_enricht.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 
unset key
#set key width +2
#set key height +1
set output "MOX.pu_composition_nobox.png"
set ylabel "Plutonium composition [%]"
plot [0.25:300][0:75] NaN with lines lw 2 lt 2 dt 1 lc rgb "black" title "NN decay recipe" , \
  NaN with lines lw 2 dt 2 lc rgb "black" title "NN decay depletion" , \
  'composition_recipe_Fuel_PU_enricht.dat' every ::1 using 1:2 with lines lw 2 dt 1 lc rgb "red" title "^{238}Pu", \
  'composition_recipe_Fuel_PU_enricht.dat' every ::1 using 1:3 with lines lw 2 dt 1 lc rgb "blue" title "^{239}Pu", \
  'composition_recipe_Fuel_PU_enricht.dat' every ::1 using 1:4 with lines lw 2 dt 1 lc rgb "dark-green" title "^{240}Pu", \
  'composition_recipe_Fuel_PU_enricht.dat' every ::1 using 1:5 with lines lw 2 dt 1 lc rgb "orange" title "^{241}Pu", \
  'composition_recipe_Fuel_PU_enricht.dat' every ::1 using 1:6 with lines lw 2 dt 1 lc rgb "dark-blue" title "^{242}Pu", \
  'composition_recipe_Fuel_PU_enricht.dat' every ::1 using 1:7 with lines lw 2 dt 1 lc rgb "dark-pink" title "^{241}Am", \
  'composition_depletion_Fuel_PU_enricht.dat' every ::1 using 1:2 with lines lw 2 lt 2 dt 2 lc rgb "red" notitle , \
  'composition_depletion_Fuel_PU_enricht.dat' every ::1 using 1:3 with lines lw 2 lt 2 dt 2 lc rgb "blue" notitle , \
  'composition_depletion_Fuel_PU_enricht.dat' every ::1 using 1:4 with lines lw 2 lt 2 dt 2 lc rgb "dark-green" notitle , \
  'composition_depletion_Fuel_PU_enricht.dat' every ::1 using 1:5 with lines lw 2 lt 2 dt 2 lc rgb "orange" notitle , \
  'composition_depletion_Fuel_PU_enricht.dat' every ::1 using 1:6 with lines lw 2 lt 2 dt 2 lc rgb "dark-blue" notitle , \
  'composition_depletion_Fuel_PU_enricht.dat' every ::1 using 1:7 with lines lw 2 lt 2 dt 2 lc rgb "dark-pink" notitle 
