#!/bin/sh

SRC=$1
NAME=${SRC%.*}
EXT="md"
IDX="/tmp/"$NAME".sec"

echo "Build index: $IDX"
sed -n '/-----/=' $SRC > $IDX

start=1
for((seqno=2;seqno<=100;seqno++));do
    ((fileno=seqno-1))
    dest="$NAME-""$fileno"".""$EXT"
    if [[ $fileno -lt 10 ]]; then
        dest="$NAME-0""$fileno"".""$EXT"
    fi

    found=`sed -n ''"$seqno"'p' "$IDX"`
    ((end=found-2))

    echo "Write: section=$seqno dest=$dest start=$start end=$end"

    if [[ $end -le 0 ]]; then
        echo ">> write last section <<"
        sed -n ''"$start"',$p' $SRC > $dest
        break;
    else
        sed -n ''"$start"','"$end"'p' $SRC > $dest
    fi

    ((start=end+1))
done;
