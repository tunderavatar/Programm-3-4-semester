set title "EM-algorithm"
set palette
plot 'Data_3_sem\em\points_22.plt' palette,\
'Data_3_sem\em\ellipse_22.plt' using 1:2:3:4:5 with ellipses lc rgb "red" title "ellipses"