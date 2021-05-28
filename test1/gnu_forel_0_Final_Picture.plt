set size square
set xrange [-10:20]
set yrange [-10:20]
set size ratio 1
set title "FOREL-algorithm"
plot 'Data_3_sem\FOREL\EPOCH_0\points.plt' title "Points", \
'Data_3_sem\FOREL\EPOCH_0\centers_23.plt' using 1:2:3 with circles lc rgb "red" title "circles"
