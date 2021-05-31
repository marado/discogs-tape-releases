set term png
set output "data.png"
set title "Evolution of percentage of cassette releases per number of music releases"
set xlabel "year"
set ylabel "percentage"
plot "data.txt" with linespoints ls 1 notitle
