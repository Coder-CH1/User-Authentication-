import 'package:authentication/service.dart';
import 'package:flutter/material.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final ApiService _apiService = ApiService();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  void _register() async {
    try {
      final response = await _apiService.register(
          _nameController.text,
          _emailController.text,
          _passController.text);
      print('${response ['access_token']}');
    } catch (e) {
      print('$e');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Register page', style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
            const Text('Name', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
            const SizedBox(
             height: 10,
            ),
            SizedBox(
              width: 400,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: _nameController,
                  keyboardType: TextInputType.name,
                  maxLines: null,
                  expands: true,
                  minLines: null,
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
                  onTap: () async {
                  },
                ),
              ),
            ),
            const Text('Email Address', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 400,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  maxLines: null,
                  expands: true,
                  minLines: null,
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
              width: 400,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: _passController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
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
                  onTap: () async {
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: ElevatedButton(
                onPressed: () {
                  _register();
                },
                child: const Text('Register', style:
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
          ],
        ),
      ),
    );
  }
}
