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
set output "voc2012_person_DiscROC.png"
plot  "voc2012_person_pvanet_lite_gpu_DiscROC.txt" using 2:1 title 'voc2012 person pvanet gpu ROC' with linespoints pointinterval 50 lw 3, \
      "voc2012_person_pvanet_lite_fix8_DiscROC.txt" using 2:1 title 'voc2012 person pvanet fix8 ROC' with linespoints pointinterval 50 lw 3, \
      "voc2012_person_pvanet_lite_fix8_minsize30_DiscROC.txt" using 2:1 title 'voc2012 person pvanet fix8 30 ROC' with linespoints pointinterval 50 lw 3,\
      "voc2012_person_pvanet_lite_gpu_minsize30_DiscROC.txt" using 2:1 title 'voc2012 person pvanet gpu 30 ROC' with linespoints pointinterval 50 lw 3