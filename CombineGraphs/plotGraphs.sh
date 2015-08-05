#!/bin/bash

#this script will create the graphs for the user automatically

gnuplot<<EOF
set terminal postscript eps color solid lw 4 "Helvetica" 24
set view 100,180
set yrange [200000:600000]
set xlabel "Number of Parallel Streams"
set ylabel "Average Transfer Speed (KB/s)"
set output 'Combine_BS_268435456_BS_131072.ps'

set title "DataTransfer_Src:OpenStack_Dest:OpenStack"
plot 'Fusion_BS_268435456_BS_131072.txt' using 1:2 title 'BS_268435456 (Bytes)' with lines, 'Fusion_BS_268435456_BS_131072.txt' using 1:3 title 'BS_131072 (Bytes)' with lines
EOF

printPlot="$(gs Combine_BS_268435456_BS_131072.ps)"
eval=$printPlot
createpdf="$(ps2pdf Combine_BS_268435456_BS_131072.ps Combine_BS_268435456_BS_131072.pdf)"
eval=$createpdf
