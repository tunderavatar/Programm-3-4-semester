set term gif animate optimize delay 15 background "#ffeedf" \
	font "Times-Roman,10"
set output "Screenshots\em_algorithm.gif"
set size square
set title "EM-algorithm"
do for [i=0:99]{
	set palette
	plot 'Data_3_sem\em\points_'.i.'.plt' palette, \
	'Data_3_sem\em\ellipse_'.i.'.plt' using 1:2:3:4:5 with ellipses lc rgb "red" title "ellipses"
}