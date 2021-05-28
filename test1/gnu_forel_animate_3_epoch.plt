set term gif animate optimize delay 75 background "#ffeedf" \
	font "Times-Roman,10"
set output "forel_algorithm_3_epoch.gif"
set size square
set xrange [-10:30]
set yrange [-10:30]
set size ratio 1
set title "FOREL-algorithm"
do for[i=0:500]{
	plot 'Data_3_sem\FOREL\EPOCH_3\points.plt' title "Points", \
	'Data_3_sem\FOREL\EPOCH_3\centers_'.i.'.plt' using 1:2:3 with circles lc rgb "red" title "circles"
}