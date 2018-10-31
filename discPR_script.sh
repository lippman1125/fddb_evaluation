#!/bin/bash
pr_png=$1
pr_txt=$2
pr_title=$3
pr_script=pr_temp.p

echo "# Compare your continuous ROC curves with other methods"		>> ${pr_script}
echo "# At terminal: gnuplot contROC.p"					>> ${pr_script}
echo "set terminal png size 1280, 1200 enhanced font 'Verdana,18'"	>> ${pr_script}
echo "set size 1,1"							>> ${pr_script}
echo "set xtics 0.1"							>> ${pr_script}
echo "set ytics 0.1"							>> ${pr_script}
echo "set grid"								>> ${pr_script}
echo "set ylabel \"Precision\""						>> ${pr_script}
echo "set xlabel \"Recall\""						>> ${pr_script}
echo "set xr [0:1.0]"							>> ${pr_script}
echo "set yr [0:1.0]"							>> ${pr_script}	
echo "set key below"							>> ${pr_script}
echo "set output \"${pr_png}\""						>> ${pr_script}
echo "plot  \"${pr_txt}\" using 2:1 title '${pr_title}' with linespoints pointinterval 50 lw 3" >> ${pr_script}

gnuplot ${pr_script}
rm ${pr_script}
