tens=0;
tens[((i++))]=$((RANDOM%100+100));
tens[((i++))]=$((RANDOM%100+100));
tens[((i++))]=$((RANDOM%100+100));
tens[((i++))]=$((RANDOM%100+100));
tens[((i++))]=$((RANDOM%100+100));
tens[((i++))]=$((RANDOM%100+100));
tens[((i++))]=$((RANDOM%100+100));
tens[((i++))]=$((RANDOM%100+100));
tens[((i++))]=$((RANDOM%100+100));
tens[((i++))]=$((RANDOM%100+100));

echo ${tens[@]};

n=${#tens[@]};
echo "length of array: "$n;

	for  ((i=0;i<n;i++))
	do
		 for((j = 0; j<n-i-1; j++))
    do
    
        if [ ${tens[j]} -gt ${tens[$((j+1))]} ]
        then
            # swap
            temp=${tens[j]}
            tens[$j]=${tens[$((j+1))]}  
            tens[$((j+1))]=$temp
        fi
    done
	done
echo ${tens[*]}
echo " the 2nd smallest no is: "${tens[1]};
echo " the 2nd largest no is: "${tens[n-2]};

