void main() {
sumOfDigits(123); 
sumOfDigits(456); 
sumOfDigits(789); 
}

void sumOfDigits(int number) {
int sum = 0;
int temp = number;
while (temp > 0) {
sum += temp % 10;
temp ~/= 10;
}
print('The sum of the digits of $number is $sum');
}
