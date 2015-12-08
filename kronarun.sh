###-----PBS Directives Start-----###

#PBS -V
#PBS -S /bin/bash
#PBS -N krona_Sewage
#PBS -l nodes=1:ppn=12
#PBS -l walltime=05:00:00
#PBS -l mem=16GB
#PBS -q s48
#PBS -M user@nyu.edu
#PBS -m bea
#PBS -e localhost:${PBS_O_WORKDIR}/${PBS_JOBNAME}.e${PBS_JOBID}
#PBS -o localhost:${PBS_O_WORKDIR}/${PBS_JOBNAME}.o${PBS_JOBID}

###-----PBS Directives End-----###

###-----Statements to be Executed-----###

cd /scratch/USER/krakenmethod/

module load kronatools/2.5

ktImportTaxonomy kraken_edit.out -o taxonomy.krona.html

#kraken_edit.out is a file created from fields 2 and 3 of the kraken output
