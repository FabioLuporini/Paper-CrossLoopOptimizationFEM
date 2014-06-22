#set title "Impact of split on the Burgers kernel (Xeon Phi)"
set title "Impact of split on the Burgers kernel (Sandy Bridge)"
set xlabel "Polynomial Order"
set ylabel "Normalized Runtime w.r.t. licm-ap"

# Make the x axis labels easier to read.
#set xtics rotate out

set style data histogram
set style histogram cluster gap 5 title offset character 1, -0.25, 0
set style fill pattern 1 border -1
set boxwidth 0.9
 
set key left maxrows 2

set grid ytics

#set autoscale y
#set yrange [0.6:1.6]
set yrange [0.6:1.6]
set ytics 0.2

#set arrow 1 from 0,1 to 1,1 nohead
set style line 1 lt 0 lc rgb "black" lw 10 pointtype 0 pointsize 0 pointinterval 1
set arrow from graph 0,first 1 to graph 1,first 1 nohead ls 1

set terminal pdf
set output "burgers-normalized-split.pdf"
#set output "burgers-normalized-split-phi.pdf"

plot newhistogram "", \
                  'burgers-normalized-split.txt' u 2:xtic(1) title col lc rgb "#CD5C5C",\
                  '' u 3:xtic(1) title col lc rgb "#FF0000",\
                  '' u 4:xtic(1) t col lc rgb "#6495ED", \
                  '' u 5:xtic(1) t col lc rgb "#00BFF", \
                  '' u 6:xtic(1) t col lc rgb "#32CD32", \
                  '' u 7:xtic(1) t col lc rgb "#228B22"

