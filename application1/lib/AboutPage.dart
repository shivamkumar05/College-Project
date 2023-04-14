import 'package:flutter/material.dart';


class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('about this apps'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Developed by: Amar Kumar ,Shivem Kumar , Vaibhav Srivastva & Rajnish Kumar, '
              '           '
              'We all got degrees from IK.Gujral Punjab Technical University Mohali Campuse -I '
              'Collaborators: Jane Smith, Bob Johnson, Alice Lee',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
