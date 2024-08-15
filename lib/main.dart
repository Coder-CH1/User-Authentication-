import 'package:authentication/register_page.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
        initialRoute: '/',
        routes: {
          '/': (context) => UserAuthenticationPage(),
          '/register': (context) => RegisterPage(),
          '/login': (context) => LoginPage(),
        },
    );
  }
}

class UserAuthenticationPage extends StatelessWidget {
  const UserAuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('User Authentication', style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 300),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                }, child: const Text('Register', style:
              TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
              ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellowAccent.shade100,
                  minimumSize: const Size(300, 50),
                ),
              ),
            ),
        SizedBox(
          height: 50,
        ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                }, child: const Text('Login', style:
              TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
              ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellowAccent.shade100,
                  minimumSize: const Size(300, 50),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
