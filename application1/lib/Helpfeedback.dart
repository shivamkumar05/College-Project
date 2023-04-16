import 'package:flutter/material.dart';

class HelpfeedPages extends StatefulWidget {
  @override
  _HelpfeedPagesState createState() => _HelpfeedPagesState();
}

class _HelpfeedPagesState extends State<HelpfeedPages> {
  final TextEditingController _feedbackController = TextEditingController();

  void _sendFeedback() {
    // Send feedback functionality here
    final feedbackText = _feedbackController.text;
    print('Sending feedback: $feedbackText');
    _feedbackController.clear();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Feedback sent!'),
      ),
    );
  }

  @override
  void dispose() {
    _feedbackController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
        actions: [
          IconButton(
            icon: Icon(Icons.send),
            onPressed: _sendFeedback,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Send Feedback',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 8.0),
            TextField(
              controller: _feedbackController,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Enter your feedback',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
