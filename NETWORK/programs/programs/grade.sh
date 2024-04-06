#!/bin/bash

echo "Student Grade Display Program"

# Function to calculate grade based on percentage
calculate_grade() {
    percentage=$1

    if ((percentage >= 90)); then
        grade="A"
    elif ((percentage >= 80)); then
        grade="B"
    elif ((percentage >= 70)); then
        grade="C"
    elif ((percentage >= 60)); then
        grade="D"
    else
        grade="F"
    fi

    echo "$grade"
}

# Function to get input and display grade
get_student_grade() {
    read -p "Enter student name: " name
    read -p "Enter student percentage: " percentage

    grade=$(calculate_grade $percentage)

    echo "Student: $name"
    echo "Percentage: $percentage%"
    echo "Grade: $grade"
    echo
}

# Main program
while true; do
    get_student_grade

    read -p "Do you want to enter grades for another student? (y/n): " choice

    if [[ $choice != "y" ]]; then
        break
    fi
done

