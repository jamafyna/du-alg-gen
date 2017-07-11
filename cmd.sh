# you can change cmd.sh depending on what type of queue you are using.
# If you have no queueing system and want to run on a local machine, you
# can change all instances 'queue.pl' to run.pl (but be careful and run
# commands one by one: most recipes will exhaust the memory on your
# machine).  queue.pl works with GridEngine (qsub).  slurm.pl works
# with slurm.  Different queues are configured differently, with different
# queue names and different ways of specifying things like memory;
# to account for these differences you can create and edit the file
# conf/queue.conf to match your queue's configuration.  Search for
# conf/queue.conf in http://kaldi-asr.org/doc/queue.html for more information,
# or search for the string 'default_config' in utils/queue.pl or utils/slurm.pl.
# with queue.pl instaed od run.pl - for clusters
export train_cmd="run.pl --mem 4G"
export decode_cmd="run.pl --mem 4G"
export mkgraph_cmd="run.pl --mem 8G"

# this controls the number of parallel decoding jobs launched in run.sh if you
# are running locally (e.g. with run.pl) you can reduce it to control memory
# usage.
# over-night:4, over-day:2!!!!!
# in cluster environment: 10-20 jobs, locally 2-4.
export njobs=2
