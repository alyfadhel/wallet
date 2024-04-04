import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallet/modules/home/home_screen.dart';

import 'auth.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue[900],
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.blue[900],
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
        ),
      ),
      backgroundColor: Colors.blue[900],
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'Use your fingerprint to log into app',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Divider(
              color: Colors.white10,
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton.icon(
              onPressed: () async {
                bool auth = await Authentication.authentication();
                debugPrint('can auth: $auth');
                if (auth) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                }
              },
              icon: const Icon(
                Icons.fingerprint,
                color: Colors.white,
              ),
              label: Text(
                'Authentication',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.white,
                    ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.blue[900],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
