workfolder=/truba/home/emrah/WORKFOLDER/PROD/210421_run/phylogeny-snakemake/results
finished_num_task=8
echo -n "\""
count=0
for protein in `ls $workfolder`; do
	num_tasks=`ls $workfolder/$protein|wc -l`
	if [ "$num_tasks" -lt "$finished_num_task" ]; then
		echo -n "$protein\",\""
		let "count=count+1"
	fi
done
echo 
echo "Incompleted protein num: $count"
