#!/bin/bash

#################
# INSTRUCTIONS
#----------------
# 0. copy me to your own directory and change its permission to -rw-r--r-- (hint: chmod 644 filename)
# 1. copy this file to ARGON (hint: "scp hunt.txt hawkID@argon.hpc.uiowa.edu:~/")
# 2. log on to ARGON, find the file and change its name to hunt.sh
# 3. edit the parameters below using a command line text editor
# 4. submit the job using `qsub`
# 5. once job is finished, log off 
# 6. now that you are back on fastx, use scp to copy the hunt.sh, output.txt, error.txt test_all.txt.gz back to fastx
# 7. move all four files into your project repository, in a new directory called review
# 8. now commit and push to the remote repository
# 9. I'll check your repository to see whether you did it!
# 10. if you really like your repository to be organized and don't like that test directory, feel free to remove it after next week!
#################

########################
# EDIT ME
#----------------------
#$ -q BIO-INSTR
#$ -M pellw@uiowa.edu
#$ -m bea
#$ -N RyanPellow
#$ -o output.txt
#$ -e error.txt
########################

set -e
set -u
set -o pipefail

echo "To submit the job, I said to the prompt: qsub hunt.sh " $0   # what does this command do?
echo
echo "I heard ARGON is real powerful! But I don't believe it. Let's see what the environment is like here..."
echo
uname -a
echo

echo "Wow, it's a lot of work to just submit the job, let me take a break..."
# EDIT ME
n=5     # give the number of seconds you want to rest
# END EDIT

time sleep $n
echo "Wait, how many seconds have I rested? Let me count..."
# do you know what the next command means? hint: `seq 1 $n` is a command, while $() just quotes its output
for i in $(seq 1 $n)
do
	echo $i
done

echo
echo "Now I'm recharged, let's do some work!"
echo
mkdir test
for i in $(seq 1 $n)
do
	echo $i > ./test/test_${i}.txt
done
echo "Let's see what we have done ..."
find ./test -name "*.txt"
echo "But I want to combine all of them into one file..."
cat ./test/test*.txt > ./test/test_all.txt
echo "And let's compress it..."
gzip ./test/test_all.txt
