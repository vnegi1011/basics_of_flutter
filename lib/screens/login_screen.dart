import 'package:basics_of_flutter/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import 'dashboard_screen.dart';




class LoginScreen extends StatelessWidget {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(12.0),
                          bottomRight: Radius.circular(16.0),
                          topRight: Radius.circular(12.0)
                      )
                  ),
                  padding: EdgeInsets.only(left: 8, right: 16.0, top: 8, bottom: 16),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset('assets/images/icon.png', width: 100, height: 100,))),
              SizedBox(height: 20),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  hintText: 'abc@gmail.com',
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16.0)
                ),
              ),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    hintText: '********',
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16.0)
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if(_emailController.text.isEmpty || _passwordController.text.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Invalid Credentials.')));
                    return;
                  }
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DashboardScreen()),
                  );
                },
                child: Text('Login'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SignupScreen()),
                  );
                },
                child: Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
