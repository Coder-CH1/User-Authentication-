import 'package:authentication/logout_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Login page', style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        )),
      ),
      body:
        Column(
          children: [
               Padding(
                 padding: const EdgeInsets.only(left: 50),
                 child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LogoutPage(),
                    ),
                    );
                  }, child: const Text('Logout', style:
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
            //),
          ],
        )
    );
  }
}
