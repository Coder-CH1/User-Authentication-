import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  String errorMessage = '';

  void _login() async {
    if (_form.currentState!.validate()) {
      final email = _emailController.text.trim();
      final pass = _passController.text.trim();

      if (email == 'test@example.com' && pass == 'password') {
        Navigator.pushReplacementNamed(context, '/home');
      } else {
        setState(() {
          errorMessage = 'Invalid email or password';
        });
      }
    } else {
      setState(() {
        errorMessage = 'Fill all fields properly';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Login page', style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        )
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body:
        Form(
          key: _form,
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              children: [
                 Text('Email address', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                SizedBox(
                  width: 400,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: TextFormField(
                      controller: _emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email address is required';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
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
                      onTap: () async {
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                const Text('Password', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 400,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      controller: _passController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password is required';
                        }
                        return null;
                      },
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
                   SizedBox(
                     height: 20,
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 20, right: 20),
                     child: ElevatedButton(
                      onPressed: (){
                        _login();
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
              ],
            ),
          ),
        )
    );
  }
}
