# Compare your continuous ROC curves with other methods
# At terminal: gnuplot contROC.p
set terminal png size 1280, 1200 enhanced font 'Verdana,18'
set size 1,1
set xtics 0.1
set ytics 0.1
set grid
set ylabel "Precision"
set xlabel "Recall"
set xr [0:1.0]
set yr [0:1.0]
set key below
set output "fddb_PR.png"
plot  "fddb_faceboxes_PR.txt" using 2:1 title 'Face faceboxes PR' with linespoints pointinterval 50 lw 3, \
      "fddb_xiaomi_PR.txt" using 2:1 title 'Face xiaomi PR' with linespoints pointinterval 50 lw 3, \
      "fddb_mtcnn_PR.txt" using 2:1 title 'Face mtcnn PR' with linespoints pointinterval 50 lw 3
