#!/usr/bin/bash
cd ..
outpath=proj2/HyperPipes/OutputFiles
plotdata=../proj2/HyperPipes/PlotData
file=`basename $1`	#remove directory
file=${file%.lisp}	#remove .lisp
echo "Running all HyperPipes options on $file dataset"
sbcl --load scripts/batch.lisp --eval "(batch \"$file\")"
echo "Running naive bayes on $file dataset"
sbcl --load scripts/nb-batch.lisp --eval "(nb-batch \"$file\")"

echo "Generating Plot Datafiles"
for file in `ls $outpath | grep $1`; do
base=`basename $file`
gawk -f scripts/stats.awk -v Filename=proj2/HyperPipes/OutputFiles/$file > proj2/HyperPipes/PlotData/$base
done

echo "Generating Plot Datafile for NB"
gawk -f scripts/stats.awk -v Filename=proj2/HyperPipes/NBOutput/nb-outputFile-$1.txt > proj2/HyperPipes/PlotData/nb-outputFile-$1.dat

echo "Creating Plots"
#for file in `ls $outpath | grep $1`; do
bash scripts/plot-with-nb.sh $1
#done

