set term gif animate optimize delay 15 background "#ffeedf"\
	font "Times-Roman,10"
set output "Screenshots\kmc_algorithm.gif"
set size square
set title "K-Means with cores"
do for[i=1:99]{
	set pallete
	plot 'Data_3_sem\kmc\points_'.i.'.plt' palette, \
	'Data_3_sem\kmc\centers_'.i.'.plt' palette
}