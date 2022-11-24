import 'package:flutter/material.dart';
import 'package:flutter_project_2/consts/color_consts.dart';
import 'package:flutter_project_2/models/coffee_model.dart';

class CoffeeCard extends StatefulWidget {
  final CoffeeModel coffeeModel;

  const CoffeeCard({
    Key? key,
    required this.coffeeModel,
  }) : super(key: key);

  @override
  State<CoffeeCard> createState() => _CoffeeCardState();
}

class _CoffeeCardState extends State<CoffeeCard> {
  late final CoffeeModel coffeeModel;
  var rating = 3.0;
  int quantity = 1;
  bool switchValue = true;
  bool isFavourite = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: ColorConsts.white,
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    coffeeModel.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        ColorConsts.dark_brown,
                        ColorConsts.skin_color,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.add,
                      color: ColorConsts.white,
                    ),
                    onPressed: () => () {},
                  ),
                ),
              ],
            ),
            Expanded(
              child: Hero(
                tag: coffeeModel.image,
                child: Image.asset(
                  coffeeModel.image,
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
