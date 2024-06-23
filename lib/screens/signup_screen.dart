import 'package:basics_of_flutter/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class SignupScreen extends StatelessWidget {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign Up')),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
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
                      controller: _userNameController,
                      decoration: InputDecoration(
                          labelText: 'Username',
                          border: OutlineInputBorder(),
                          hintText: 'abc145',
                      ),
                    ),
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                        hintText: 'abc@gmail.com',
                      ),
                    ),
                    TextField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                        hintText: '********',
                      ),
                      obscureText: true,
                    ),
                  ],
                ),
              ),
            ),
          ),

          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            color: Colors.blue,
            height: 50,
            child: InkWell(
              onTap: () {
                if(_emailController.text.isEmpty || _passwordController.text.isEmpty || _userNameController.text.isEmpty){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Input all fields!!!')));
                  return;
                }
                Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardScreen(userName: _userNameController.text,),));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('SignUp', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          ),
          SizedBox(height: 20),

        ],
      ),
    );
  }
}
