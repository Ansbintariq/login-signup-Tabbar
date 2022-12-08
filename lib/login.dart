import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget buildTopPart() {
    return Column(
      children: [
        Image.asset(
          "img/Logo.png",
          height: 100,
        ),
        Column(
          children: const [],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Column(
              children: [buildTopPart()],
            )
          ],
        ),
      )),
    );
  }
}
