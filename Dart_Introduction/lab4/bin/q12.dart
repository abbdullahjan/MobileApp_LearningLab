// Write a Dart function that takes an integer between 1 and 7 as input, where each number
// corresponds to a day of the week (1 for Monday, 2 for Tuesday, etc.). Use a `switch` statement
// to print the name of the corresponding weekday. If the number is outside the range 1–7, print
// "Invalid day".

void main() {
printWeekday(1); 
printWeekday(4); 
printWeekday(7); 
printWeekday(0); 
printWeekday(8); 
}

void printWeekday(int day) {
switch (day) {
case 1:
print('Monday');
break;
case 2:
print('Tuesday');
break;
case 3:
print('Wednesday');
break;
case 4:
print('Thursday');
break;
case 5:
print('Friday');
break;
case 6:
print('Saturday');
break;
case 7:
print('Sunday');
break;
default:
print('Invalid day');
}
}