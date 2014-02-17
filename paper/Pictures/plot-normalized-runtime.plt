set title "The Advection-Diffusion Problem"
#set xlabel "Tile sizes (num. of vertices)"
set xlabel "Polynomial Order"
set ylabel "Normalized Runtime w.r.t. LICM"

# Make the x axis labels easier to read.
#set xtics rotate out

set style data histogram
set style histogram cluster gap 5 title offset character 1, -0.25, 0
set style fill solid border -1
set boxwidth 0.9
 
set key left

set grid ytics

#set autoscale y
set yrange [0.0:1.5]
set ytics 0.2

set terminal pdf
set output "advdiff-normalized.pdf"

plot newhistogram "", \
                  'advdiff-normalized.txt' u 2:xtic(1) title col lc rgb "#CD5C5C",\
                  '' u 3:xtic(1) t col lc rgb "#6495ED", \
                  '' u 4:xtic(1) t col lc rgb "#32CD32"

