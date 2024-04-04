import 'package:flutter/cupertino.dart';
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
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: ListWheelScrollView(
        itemExtent: 275,
        controller: controller,
        children: List.generate(
          5,
          (index) => buildCardList(context, index),
        ).toList(),
      ),
    );
  }
}

Widget buildCardList(context, int index) {
  final chooseColor = [
    Colors.black,
    Colors.red[900],
    Colors.orange[800],
    Colors.blue[900],
    Colors.green[700]
  ];
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const AuthenticationPage(),
        ),
      );
    },
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: [
          MyContainer(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                15.0,
              ),
              color: chooseColor[index],
            ),
            clipBehavior: Clip.none,
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
                          style: Theme.of(context)
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
                          style: Theme.of(context)
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
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      Align(
                        alignment: AlignmentDirectional.bottomEnd,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '05/12',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: Colors.white,
                                ),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(500),
                            topRight: Radius.circular(100),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(50),
                          ),
                          gradient: LinearGradient(
                            begin: FractionalOffset.topLeft,
                            end: FractionalOffset.bottomRight,
                            colors: [
                              Colors.white.withOpacity(.3),
                              Colors.white.withOpacity(.3)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            height: 80,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(50),
                bottomLeft: Radius.circular(100),
                bottomRight: Radius.circular(500),
              ),
              gradient: LinearGradient(
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.fromOffsetAndRect(Offset(50, 20), Rect.largest),
                colors: [
                  Colors.white.withOpacity(.3),
                  Colors.white.withOpacity(.3),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
