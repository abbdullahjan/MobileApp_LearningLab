void main() {
myfunction(first: 10, second: 20);
}
void myfunction({int? first, int? second}) {
int ans = (first ?? 0) + (second ?? 0);
print(ans);
}