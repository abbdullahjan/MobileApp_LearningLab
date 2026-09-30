void main() {
Map<String, dynamic> product1 = {
'name': 'Laptop',
'price': 1000.0,
'discount': 10.0
};
Map<String, dynamic> product2 = {'name': 'Smartphone', 'price': 800.0};
calculateFinalPrice(
product1); 
calculateFinalPrice(product2); 
}
void calculateFinalPrice(Map<String, dynamic> product) {
double price = product['price'];
double discount = product.containsKey('discount') ? product['discount'] : 0.0;
double finalPrice = price - (price * discount / 100);
if (discount > 0) {
print(
'The final price after a discount of $discount% is: \$${finalPrice.toStringAsFixed(2)}');
} else {
print('The original price is: \$${price.toStringAsFixed(2)}');
}
}
