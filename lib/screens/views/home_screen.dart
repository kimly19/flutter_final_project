import 'package:flutter/material.dart';
import 'package:flutter_project_2/consts/asset_const.dart';
import 'package:flutter_project_2/consts/color_consts.dart';
import 'package:flutter_project_2/models/coffee_model.dart';
import 'package:flutter_project_2/screens/cards/coffee_card.dart';
import 'package:flutter_project_2/widgets/textfield_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController search = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
          width: double.infinity,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.zero,
                height: 40.0,
                width: 40.0,
                child: Image.asset(
                  AssetConst.IMG_5,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'CAFE HUT',
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                height: 60.0,
                decoration: BoxDecoration(
                  color: ColorConsts.skin_color,
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                    width: 2,
                    color: ColorConsts.dark_brown,
                  ),
                ),
              ),
              TextFieldWidget(
                text: 'Search',
                icon: Icons.search,
                isPasswordType: false,
                controller: search,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                  ),
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 2.5 / 3,
                      crossAxisSpacing: 20,
                    ),
                    itemBuilder: (context, index) {
                      CoffeeModel gridCoffee = CoffeeModel.coffeeList[index];
                      return CoffeeCard(coffeeModel: gridCoffee);
                    },
                    itemCount: 6,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
