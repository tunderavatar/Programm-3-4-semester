set term gif animate optimize delay 15 background "#ffeedf"\
	font "Times-Roman,10"
set output "Screenshots\Hierarch.gif"
set size square
set title "Hierarch Algorithm"
do for[i=0:589]{
	plot 'Data_3_sem\Hierarch\points_0.plt', \
	'Data_3_sem\Hierarch\linespoints_'.i.'.plt' with linespoints
}