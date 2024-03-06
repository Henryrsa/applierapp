import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
        title: Text(
          'P R O F I L E',
          style: TextStyle(color: Colors.grey[800]),
        ),
      ),
      body: const Center(
        child: Text('PROFILE'),
      ),
    );
  }
}
