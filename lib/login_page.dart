import 'package:authentication/home_page.dart';
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
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              const Text('Email address', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    maxLength: 20,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    decoration: const InputDecoration(
                      hintText: 'Enter email',
                      hintStyle: TextStyle(
                        color: Colors.black12,
                      ),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                    onChanged: (value) {
                    },
                    readOnly: true,
                    onTap: () async {
                    },
                  ),
                ),
              ),
              const Text('Password', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    maxLength: 20,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.black12,
                      ),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                    onChanged: (value) {
                    },
                    readOnly: true,
                    onTap: () async {
                    },
                  ),
                ),
              ),
                 Padding(
                   padding: const EdgeInsets.only(left: 20, right: 20),
                   child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage(),
                      ),
                      );
                    }, child: const Text('Login', style:
                TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                ),
                ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      minimumSize: const Size(400, 50),
                    ),
                ),
                 ),
              //),
            ],
          ),
        )
    );
  }
}
