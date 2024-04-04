import 'package:flutter/material.dart';
import 'package:wallet/modules/auth_page/auth_screen.dart';
import 'package:wallet/widgets/my_container.dart';


class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller =
    ScrollController(keepScrollOffset: true, initialScrollOffset: 150);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Text(
          'Wallet',
          style: Theme
              .of(context)
              .textTheme
              .headlineMedium!
              .copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListWheelScrollView(
        itemExtent: 250,
        controller: controller,
        children: List.generate(
          5,
              (index) => buildCardList(context,index),
        ).toList(),
      ),
    );
  }
}






Widget buildCardList(context, int index) {
  final chooseColor=[
    Colors.black,
    Colors.red,
    Colors.grey,
    Colors.blue,
    Colors.green
  ];
  return  InkWell(
    onTap: (){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const AuthenticationPage(),
        ),
      );
    },
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: MyContainer(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            15.0,
          ),
          color: chooseColor[index],
        ),
        widget: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Total Balance',
                      style: Theme
                          .of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 110,
                  ),
                  Expanded(
                    child: Text(
                      'Dollar Wallet',
                      style: Theme
                          .of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50.0,
              ),
              Text(
                '\$ 2.700.00',
                style: Theme
                    .of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: Text(
                  '05/12',
                  style: Theme
                      .of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}






