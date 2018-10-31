#!/bin/bash
roc_png=$1
roc_txt=$2
roc_title=$3
roc_script=roc_temp.p

echo "# Compare your continuous ROC curves with other methods"			>> ${roc_script}
echo "# At terminal: gnuplot contROC.p"						>> ${roc_script}
echo "set terminal png size 1280, 1200 enhanced font 'Verdana,18'"		>> ${roc_script}
echo "set size 1,1"								>> ${roc_script}
echo "set xtics 100"								>> ${roc_script}
echo "set ytics 0.1"								>> ${roc_script}
echo "set grid"									>> ${roc_script}
echo "set ylabel \"True positive rate\""					>> ${roc_script}
echo "set xlabel \"False positive\""						>> ${roc_script}
echo "set xr [0:2000]"								>> ${roc_script}
echo "set yr [0:1.0]"								>> ${roc_script}
echo "set key below"								>> ${roc_script}
echo "set output \"${roc_png}\""						>> ${roc_script}
echo "plot  \"${roc_txt}\" using 2:1 title '${roc_title}' with linespoints pointinterval 50 lw 3" >> ${roc_script}

gnuplot ${roc_script}
rm ${roc_script}
