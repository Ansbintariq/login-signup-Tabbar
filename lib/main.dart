import 'package:flutter/material.dart';

import 'Ali_login_tabbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' Login Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TabbarTwo(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text(
          "Login",
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("Email"),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Email is Required";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      label: Text("Password"),
                    ),
                  ),
                ],
              )),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                } else {}
              },
              child: const Text("data"))
        ],
      ),
    );
  }
}
