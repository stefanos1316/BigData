#!/bin/bash

#this script will create the graphs for the user automatically

gnuplot<<EOF
set terminal postscript eps color solid lw 4 "Helvetica" 24
set view 100,180
set xtics rotate
set yrange [200000:600000]
set xlabel "Window size (Bytes)"
set ylabel "Average Transfer Speed (KB/s)"
set output 'CompareStreams.ps'

set title "DataTransfer_Src:OpenStack_Dest:OpenStack"
plot 'Fusion_streams.txt' using 1:2 title 'Streams_10' with lines, 'Fusion_streams.txt' using 1:3 title 'Streams_30' with lines, 'Fusion_streams.txt' using 1:4 title 'Streams_60'
EOF

printPlot="$(gs CompareStreams.ps)"
eval=$printPlot
createpdf="$(ps2pdf CompareStreams.ps CompareStreams.pdf)"
eval=$createpdf
