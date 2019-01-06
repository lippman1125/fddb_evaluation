# Compare your continuous ROC curves with other methods
# At terminal: gnuplot contROC.p
set terminal png size 1280, 1200 enhanced font 'Verdana,18'
set size 1,1
set xtics 100
set ytics 0.1
set grid
set ylabel "True positive rate"
set xlabel "False positive"
set xr [0:2000]
set yr [0:1.0]
set key below
set output "fddb_compare_DiscROC.png"
plot  "fddb_ssh_400x600_DiscROC.txt" using 2:1 title 'ssh 400x600' with linespoints pointinterval 50 lw 3,\
      "fddb_mtcnn_DiscROC.txt" using 2:1 title 'mtcnn' with linespoints pointinterval 50 lw 3,\
      "fddb_s3fd_DiscROC.txt" using 2:1 title 's3fd' with linespoints pointinterval 50 lw 3
