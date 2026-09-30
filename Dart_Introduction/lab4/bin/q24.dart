import 'dart:math';
void main() {
print( A(1, 2, 3) );
print( Z(1,2));
print( B(2,4));
}
var A = (int x, int y, int p) => x*x + 2*x*y + p*Z(2,3);
var Z = (int a, int b) => a*a + 4 * pow( B(1,2), 2) - 8*b + 2*a;
var B = (int n, int q) => n*n + q*n + 1;