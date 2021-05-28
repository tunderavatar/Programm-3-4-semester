set size square
set xrange [-10:20]
set yrange [-10:20]
set size ratio 1
set title "FOREL-algorithm"
plot 'Data_3_sem\FOREL\EPOCH_1\points.plt' title "Points", \
'Data_3_sem\FOREL\EPOCH_1\centers_6.plt' using 1:2:3 with circles lc rgb "red" title "circles"
