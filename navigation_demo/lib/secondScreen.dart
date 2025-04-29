import 'package:flutter/material.dart';
import 'package:navigation_demo/thirdScreen.dart';
// import 'package:navigation_demo/main.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  State<SecondScreen> createState() {
    return _SecondScreenState();
  }
}

class _SecondScreenState extends State<SecondScreen> {
  TextEditingController _statusController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final String username =
        ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(title: Text("Welcome to second page")),
      body: Column(
        children: [
          SizedBox(height: 100),
          greetUser(username),
          SizedBox(height: 20),
          status(),
          SizedBox(height: 30),
          ElevatedButton(onPressed: _submit, child: Text("Submit")),
        ],
      ),
    );
  }

  Widget greetUser(String username) {
    return Text(
      'Welcome $username',
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    );
  }

  Widget status() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: TextField(
        controller: _statusController,
        decoration: InputDecoration(
          labelText: "What is you status?",
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  void _submit() {
    final userStatus = _statusController.text.trim();
    if (userStatus.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ThirdScreen(status: userStatus),
        ),
      );
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Enter your status")));
    }
  }
}
