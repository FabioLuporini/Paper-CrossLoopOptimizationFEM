#set title "Static linear elasticity - polynomial order 1"
set title "Static linear elasticity - polynomial order 2"
set xlabel "Number of coefficient functions"
set ylabel "Execution time (secs)"

set terminal pdf enhanced
#set output "elasticity-p1.pdf"
set output "elasticity-p2.pdf"

set datafile separator ";"

set yrange [0:90.0]

set style data histogram
set style histogram rowstack gap 9
set style fill border -1
set boxwidth 0.9 relative

plot newhistogram "f = 1", \
       'elasticity-rt-p2-f1.dat' using 3:xticlabels(2) title "Assembly" fs pattern 1 linecolor rgb "#CD5C5C", \
       ''              using 4:xticlabels(2) title "Solve" fs pattern 2 linecolor rgb "#6495ED", \
       ''              using 5:xticlabels(2) title "Other" fs pattern 4 linecolor rgb "#32CD32", \
     newhistogram "f = 2", \
       'elasticity-rt-p2-f2.dat' using 3:xticlabels(2) title "" fs pattern 1 linecolor rgb "#CD5C5C", \
       ''              using 4:xticlabels(2) title "" fs pattern 2 linecolor rgb "#6495ED", \
       ''              using 5:xticlabels(2) title "" fs pattern 4 linecolor rgb "#32CD32"
