#!/usr/bin/gnuplot 
reset
set terminal png
if (!exist("outFilename")) outFilename='defaultGraph.png'
set output outFilename

if (!exists("inFilename")) filename='log.txt'

if (!exists("yLabel")) yLabel='PDR'
set ylabel yLabel

set xlabel "Time in Cycle"

set title "Debt-based Algorithm " font ",15"
 

#set xrange [-1:1]
#set yrange [-0.5:1.1]
#set format xy "%.1f"

	
if (!exists("StudyState"))  StudyState ='0'
set key title StudyState 

set style data linespoints
set key below 
set grid
   

#plot inFilename  using 1:2  title outFilename with lines
plot inFilename using 2 pointinterval 100 lt rgb "#000044" pt 5  title 'Flow1' , \
     inFilename using 3 pointinterval 100 lt rgb "#990000" pt 6  title 'Flow2' 
