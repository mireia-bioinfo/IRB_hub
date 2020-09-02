INPUT=$( ls hg19/RNA*.bw | xargs basename -a )
HG19="hg19"
HG38="hg38"
CHAIN="/home/mramos/refs/liftOver/hg19ToHg38.over.chain"

for FILE in $INPUT
do
	CrossMap.py bigwig $CHAIN $HG19/$FILE $HG38/$FILE
done