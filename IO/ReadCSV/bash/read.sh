COUNTER=0
while IFS=, read -r line || [[ -n "$line" ]]
do
    # Discard header
    if [ "$COUNTER" == 0 ]  
    then
        COUNTER=$((COUNTER+=1))
        continue
    fi
    # pipe $line into awk to process
    echo $line | awk -F ',' '{ print $1 " " $2 }'
done < "../data.csv"