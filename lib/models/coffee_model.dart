class CoffeeModel {
  final int id;
  final String name;
  final String image;
  final double price;

  CoffeeModel(
    this.id,
    this.name,
    this.image,
    this.price,
  );

  static List<CoffeeModel> coffeeList = [
    CoffeeModel(1, "Espresso", 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmJ1qwr0Fez_PC7sbPyHgbKxPylb6KCzSsdw&usqp=CAU', 5.00),
    CoffeeModel(2, 'Cafe Mocha', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1apRdMmA_epMJHSNcSfCAY33BhNGrfADYjA&usqp=CAU', 11.00),
    CoffeeModel(3, 'Blueberry Muffin', 'https://www.inspiredtaste.net/wp-content/uploads/2016/10/Easy-Blueberry-Muffin-Recipe-1-1200.jpg', 3.00),
    CoffeeModel(4, 'Caramel Macchiato', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQALrRvztNrcEj8ts09-7O4vqnku93IETV5gg&usqp=CAU', 7.00),
    CoffeeModel(5, 'Chocolate Doughnut', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg35N6kk8wdlI5CrmseYw5vhVBscDV6DajLA&usqp=CAU', 4.00),
    CoffeeModel(6, 'Vanilla Cake', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIXfdGloO33dNDZR1snPrO7TZPTk8HvgxPAg&usqp=CAU', 4.50),
  ];
}
