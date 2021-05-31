set term png
set output "data.png"
set title "Number of cassette releases per year"
plot "data.txt" with linespoints ls 1 notitle
