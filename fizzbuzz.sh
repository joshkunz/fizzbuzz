# To run:
# $ bash fizzbuzz.sh

for (( i=0 ; i <= 100 ; i++ )) do
    v="$i "
    if [ $(( i % 3 )) -eq 0 ]; then 
        v="${v}Fizz"
    fi
    if [ $(( i % 5 )) -eq 0 ]; then
        v="${v}Buzz"
    fi
    echo $v
done
