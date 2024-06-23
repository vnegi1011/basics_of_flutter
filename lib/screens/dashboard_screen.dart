import 'package:flutter/material.dart';




class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key, this.userName = 'vipin1234'});
  final String userName;

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: Center(
        child: Text('Welcome to the Dashboard, ${widget.userName}', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

