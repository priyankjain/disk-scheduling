#!/bin/sh
# This is a comment

rm *.txt
make clean
make
echo "Results"
./disksched input_file/in.txt student_out_fcfs_1.txt fcfs 1

if diff -w student_out_fcfs_1.txt correct_output/correct_output_fcfs_1.txt; then
    echo Success-----------------------------------------------Success
else
    echo Fail--------------------------------------------------Fail
fi

./disksched input_file/in.txt student_out_fcfs_10.txt fcfs 10

if diff -w student_out_fcfs_10.txt correct_output/correct_output_fcfs_10.txt; then
    echo Success-----------------------------------------------Success
else
    echo Fail--------------------------------------------------Fail
fi

./disksched input_file/in.txt student_out_fcfs_100.txt fcfs 100

if diff -w student_out_fcfs_100.txt correct_output/correct_output_fcfs_100.txt; then
    echo Success-----------------------------------------------Success
else
    echo Fail--------------------------------------------------Fail
fi

./disksched input_file/in.txt student_out_fcfs.txt fcfs

if diff -w student_out_fcfs.txt correct_output/correct_output_fcfs.txt; then
    echo Success-----------------------------------------------Success
else
    echo Fail--------------------------------------------------Fail
fi

./disksched input_file/in.txt student_out_sstf_1.txt sstf 1

if diff -w student_out_sstf_1.txt correct_output/correct_output_sstf_1.txt; then
    echo Success-----------------------------------------------Success
else
    echo Fail--------------------------------------------------Fail
fi

./disksched input_file/in.txt student_out_sstf_10.txt sstf 10

if diff -w student_out_sstf_10.txt correct_output/correct_output_sstf_10.txt; then
    echo Success-----------------------------------------------Success
else
    echo Fail--------------------------------------------------Fail
fi

./disksched input_file/in.txt student_out_sstf_100.txt sstf 100

if diff -w student_out_sstf_100.txt correct_output/correct_output_sstf_100.txt; then
    echo Success-----------------------------------------------Success
else
    echo Fail--------------------------------------------------Fail
fi

./disksched input_file/in.txt student_out_sstf_10000.txt sstf 10000

if diff -w student_out_sstf_10000.txt correct_output/correct_output_sstf_10000.txt; then
    echo Success-----------------------------------------------Success
else
    echo Fail--------------------------------------------------Fail
fi
# 