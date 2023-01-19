class Product {
  final String name;
  final String description;
  final int price;
  final String image;
  final int calorie;

  const Product({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.calorie,
  });

  static const List<Product> products = [

    // Burgers

    Product(
    name: "Lamb Slider", 
    description: "A burger made with lamb meat and special blue cheese", 
    price: 30, 
    image: "images/lambslider.png", 
    calorie: 374),

    Product(
    name: "Classic Minetta", 
    description: "A burger made with huge meat patty and melting cheese", 
    price: 27, 
    image: "images/minetta.png", 
    calorie: 374),

    Product(
    name: "The Classic", 
    description: "A regular and classic grilled burger with special sauce", 
    price: 27, 
    image: "images/theclassic.png", 
    calorie: 374),

    Product(
    name: "Grilled Southwest", 
    description: "A burger with Chipotle mayo and pepper jack cheese", 
    price: 32, 
    image: "images/grilledsouthwest.png", 
    calorie: 374),

    Product(
    name: "Japanese Umami", 
    description: "A burger made with meat fillet and beef grilled patty", 
    price: 27, 
    image: "images/minetta.png", 
    calorie: 374),

    Product(
    name: "Veggie Style", 
    description: "A burger with many kind of vegetable", 
    price: 28, 
    image: "images/veggiestyle.png", 
    calorie: 374),

    // Drinks

    Product(
    name: "Coca Cola", 
    description: "A perfect Soda Drink \nfor hot summer", 
    price: 7, 
    image: "images/cocacola.png", 
    calorie: 374),

    Product(
    name: "Teh Botol Sosro", 
    description: "A perfect handy Bottle of fresh and iced tea", 
    price: 5, 
    image: "images/tehbotolsosro.png", 
    calorie: 374),

    Product(
    name: "Lemonade", 
    description: "A iced lemonade with extra hint of mint flavor ", 
    price: 9, 
    image: "images/lemonade.png", 
    calorie: 374),

    Product(
    name: "Iced Lemon Tea", 
    description: "A Fizzy Tea with and\nLemonade juice ", 
    price: 10, 
    image: "images/icedlemontea.png", 
    calorie: 374),

    Product(
    name: "Milky way", 
    description: "A Milkshake with creamy milk and milk ice cream on top", 
    price: 15, 
    image: "images/milkshake.png", 
    calorie: 374),

    Product(
    name: "Boba Milk Tea", 
    description: "A cold milk tea with a chewy boba on top", 
    price: 17, 
    image: "images/bobamilktea.png", 
    calorie: 374)

    
  ];
}