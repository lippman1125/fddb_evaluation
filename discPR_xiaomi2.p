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
set output "fddb_compare_PR.png"
plot  "fddb_ssh_400x600_PR.txt" using 2:1 title 'ssh 400x600' with linespoints pointinterval 50 lw 3,\
      "fddb_mtcnn_PR.txt" using 2:1 title 'mtcnn' with linespoints pointinterval 50 lw 3,\
      "fddb_s3fd_PR.txt" using 2:1 title 's3fd' with linespoints pointinterval 50 lw 3
