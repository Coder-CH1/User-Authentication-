import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Register page', style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
            Text('Name', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
            SizedBox(
             height: 10,
            ),
            SizedBox(
              width: 300,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextField(
                  keyboardType: TextInputType.name,
                  maxLength: 20,
                  style: const TextStyle(
                    fontSize: 18,
                      color: Colors.black,
                  ),
                  decoration: const InputDecoration(
                    hintText: 'Enter name',
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
            SizedBox(
              height: 50,
            ),
            Text('Email Address', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 300,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  maxLength: 20,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  decoration: const InputDecoration(
                    hintText: 'Enter email address',
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
            SizedBox(
              height: 50,
            ),
            Text('Password', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 300,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
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
          ],
        ),
      ),
    );
  }
}
