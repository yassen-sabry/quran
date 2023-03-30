import 'package:flutter/material.dart';
import '/theme.dart';

void main() {
  runApp(const Splash());
}

void setState(Null Function() param0) {}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  // var splash = 'assets/splash.gif';

  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 2500), () {});
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }

  @override
  build(context) {
    return MaterialApp(
      theme: AppTheme().light,
      darkTheme: AppTheme().dark,
      themeMode: ThemeMode.system,
      home:  Scaffold(
          body: Padding(
              padding: EdgeInsets.all(16),
            child: Center(
            child: Image.asset('assets/splash.png')
            ),
              )),
      debugShowCheckedModeBanner: false,
    );
  }

  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
