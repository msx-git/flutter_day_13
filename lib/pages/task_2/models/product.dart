class Product {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

List<Product> products = [
// Sample 1: Book
  Product(
    name: "The Lord of the Rings",
    description:
        "An epic high-fantasy trilogy written by English philologist and University of Oxford professor J. R. R. Tolkien.",
    price: 19.99,
    imageUrl: "https://www.casualoptimist.com/wp-content/uploads/2020/09/fellowship-of-the-ring-illustration-johan-egerkrans-1000x1500.jpg",
  ),

// Sample 2: T-Shirt
  Product(
    name: "Flutter T-Shirt",
    description: "A comfortable and stylish t-shirt with the Flutter logo.",
    price: 24.95,
    imageUrl: "https://sharkshirts.in/wp-content/uploads/2022/02/Flutter-T-Shirt1.jpg",
  ),

// Sample 3: Coffee Mug
  Product(
    name: "World's Best Coder Mug",
    description:
        "The perfect mug for any coder. Holds 12oz of your favorite beverage.",
    price: 12.50,
    imageUrl: "https://m.media-amazon.com/images/I/71-gYKKjTTL.jpg",
  ),

// Sample 4: Headphones
  Product(
    name: "Noise Cancelling Headphones",
    description:
        "Block out the world and enjoy your music with these noise cancelling headphones.",
    price: 149.99,
    imageUrl: "https://media.graphassets.com/resize=w:1920,h:1080,fit:crop/quality=value:65/auto_image/compress/xErGHkPyShiMwVWCyghu",
  ),
];
