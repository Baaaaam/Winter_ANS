#!/usr/bin/env gnuplot

set grid xtics ytics
show grid
set key center right autotitle columnheader box
set terminal png size 1000,750 enhanced font "Helvetica,20"
show xlabel
show ylabel

set datafile missing
set output "trans_J1.png";
plot "trans" u 1:2 w lp title "all" , "" u 3:4 w lp title "from source" , "" u 5:6 w lp title "from storage"

set output "inv_J1.png";
plot "storage" u 1:2 w lp
