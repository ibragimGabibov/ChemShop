class Product {
  final int ID;
  final String name;
  final String brand;
  final double price;
  final String imagePath;

  Product(
      {required this.ID,
      required this.name,
      required this.brand,
      required this.price,
      required this.imagePath});
}

List<Product> products = [
  Product(
      ID: 1,
      name: 'Кондиционер для белья',
      brand: 'brand',
      price: 175,
      imagePath: 'assets/a.jpg'),
  Product(
      ID: 2,
      name: 'Кондиционер для белья',
      brand: 'brand',
      price: 175,
      imagePath: 'assets/b.jpg'),
  Product(
      ID: 3,
      name: 'Кондиционер для белья',
      brand: 'brand',
      price: 175,
      imagePath: 'assets/c.jpg'),
  Product(
      ID: 4,
      name: 'Кондиционер для белья',
      brand: 'brand',
      price: 175,
      imagePath: 'assets/d.jpeg'),
  Product(
      ID: 5,
      name: 'Стиральный порошок',
      brand: 'brand',
      price: 175,
      imagePath: 'assets/f.jpg'),
  Product(
      ID: 6,
      name: 'Стиральный порошок',
      brand: 'brand',
      price: 175,
      imagePath: 'assets/g.jpg'),
  Product(
      ID: 7,
      name: 'Стиральный порошок',
      brand: 'brand',
      price: 175,
      imagePath: 'assets/h.jpg'),
  Product(
      ID: 8,
      name: 'Стиральный порошок',
      brand: 'brand',
      price: 175,
      imagePath: 'assets/i.jpg'),
  Product(
      ID: 9,
      name: 'Белизна',
      brand: 'brand',
      price: 175,
      imagePath: 'assets/m.jpg'),
  Product(
      ID: 10,
      name: 'Белизна',
      brand: 'brand',
      price: 175,
      imagePath: 'assets/n.jpg'),
  Product(
      ID: 11,
      name: 'Белизна',
      brand: 'brand',
      price: 175,
      imagePath: 'assets/p.jpg'),
  Product(
      ID: 12,
      name: 'Белизна',
      brand: 'brand',
      price: 175,
      imagePath: 'assets/t.jpg'),
];

class Favourite {
  final int ID;
  final String name;
  final String brand;
  final double price;
  final String imagePath;

  Favourite(
      {required this.ID,
      required this.name,
      required this.brand,
      required this.price,
      required this.imagePath});
}

List<Favourite> favourites = [];
