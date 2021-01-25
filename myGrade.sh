#!/bin/bash

# Akshay Gokani
# 040990942
# 20F_CST8102_320 Operating Sytems
# section_323
# script to convert  total of  number grades into letter grades

# user prompts and read inputs 

echo -n 'Enter Assignment mark (0-40):'
read assignment_mark
echo -n 'Enter Test 1 mark (0-15):'
read test1_mark
echo -n 'Enter Test 2 mark (0-15):'
read test2_mark
echo -n 'Enter Final exam mark (0-30):'
read final_exam_mark


# total marks 
((total=$assignment_mark+$test1_mark+$test2_mark+$final_exam_mark))

# letter grade levels and if check to see where total is GREATHER THAN OR EQUAL TO	
# the range of the corresponding letter grade.
if [ "$total" -ge  90 ]
then
	echo your final numeric score is $total, and your final letter score is A+;
elif [ "$total" -ge  85 ]
then
	echo your final numeric score is $total, and your final letter score is A;
elif [ "$total" -ge 80 ]
then
	echo your final numeric score is $total, and your final letter score is A-;
elif [ "$total" -ge 77 ]
then
	echo your final numeric score is $total, and your final letter score is B+;	
elif [ "$total" -ge 73 ]
then
	echo your final numeric score is $total, and your final letter score is B;
elif [ "$total" -ge 70 ]
then
	echo your final numeric score is $total, and your final letter score is B-;
elif [ "$total" -ge 67 ]
then
	echo your final numeric score is $total, and your final letter score is C+;
elif [ "$total" -ge 63 ] 
then
	echo your final numeric score is $total, and your final letter score is C;
elif [ "$total" -ge 60 ]
then
	echo your final numeric score is $total, and your final letter score is C-;
elif [ "$total" -ge 57 ] 
then
	echo your final numeric score is $total, and your final letter score is D+;
elif [ "$total" -ge 53 ]
then	
	echo your final numeric score is $total, and your final letter score is D;	
elif [ "$total" -ge 50 ]
then
	echo your final numeric score is $total, and your final letter score is D-;
else 	
	echo your final numeric score is $total, and your final letter score is F;
fi
