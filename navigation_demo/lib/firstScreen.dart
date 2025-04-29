import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  State<FirstScreen> createState() {
    return _FirstScreenState();
  }
}

class _FirstScreenState extends State<FirstScreen> {
  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Who are you?')),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            const SizedBox(height: 100),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: "Your name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(onPressed: _submitName, child: Text("Submit")),
          ],
        ),
      ),
    );
  }

  void _submitName() {
    var username = _nameController.text.trim();
    if (username.isNotEmpty) {
      Navigator.pushNamed(context, "/second", arguments: username);
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Enter your name")));
    }
  }
}
