import 'package:basics_of_flutter/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';


class SignupScreen extends StatelessWidget {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign Up')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _userNameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if(_emailController.text.isEmpty || _passwordController.text.isEmpty || _userNameController.text.isEmpty){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Input all fields!!!')));
                  return;
                }
                Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardScreen(userName: _userNameController.text,),));
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
