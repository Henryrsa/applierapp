import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
        title: Text(
          'A B O U T',
          style: TextStyle(color: Colors.grey[800]),
        ),
      ),
      body: const Text(
          'Applier is a job application management app designed to help job seekers keep track of their job applications and stay organized during the job search process. With Applier, users can easily create and customize their resumes and cover letters, save job listings from various sources, and track the status of their applications.'
          'Version 1.0 of Applier includes features such as a user-friendly interface, the ability to add and edit job applications, and the option to receive notifications for important application deadlines. We are constantly working to improve and update the app, and we look forward to bringing more features and functionality to our users in future versions.'),
    );
  }
}
