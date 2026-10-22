double Z(double x, double y, double p, double q) =>
    (() {
      double N(double p, double q) => p * p + q * q;

      return x * x + 4 * y * y - 8 * N(p, q) * N(p, q);
    })();

void main() {
  print(Z(2, 3, 1, 2));
}