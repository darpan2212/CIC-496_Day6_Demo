echo "How many planets are there in our solar system?"

select ans in 8 9 10 11
do
	if [ $ans -eq 8 ]
	then
		echo "Correct answer";
	else
		echo "Wrong answer";
	fi
	exit;
done

echo "Score is : 1";
