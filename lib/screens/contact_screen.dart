import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 45,
              backgroundColor: Colors.blue,
              child: Icon(Icons.contact_mail, size: 50, color: Colors.white),
            ),

            Text(
              "BUN Sengleang",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              "Software Engineer",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 24),
            Divider(thickness: 1),
            ListTile(
              leading: Icon(Icons.phone, color: Colors.blue),
              title: Text("Phone"),
              subtitle: Text("+855 123 456 789"),
            ),
            Divider(thickness: 1),
            ListTile(
              leading: Icon(Icons.email, color: Colors.blue),
              title: Text("Email"),
              subtitle: Text("bunsengleang@example.com"),
            ),
            Divider(thickness: 1),
            ListTile(
              leading: Icon(Icons.location_on, color: Colors.blue),
              title: Text("Address"),
              subtitle: Text("Phnom Penh, Cambodia"),
            ),
            Divider(thickness: 1),
            ListTile(
              leading: Icon(Icons.web, color: Colors.blue),
              title: Text("Website"),
              subtitle: Text("bsengleang.com"),
            ),
            Divider(thickness: 1),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    iconSize: 32,
                    icon: Icon(Icons.phone, color: Colors.white),
                    onPressed: () {},
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    iconSize: 32,
                    icon: Icon(Icons.message, color: Colors.white),
                    onPressed: () {},
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    iconSize: 32,
                    icon: Icon(Icons.video_call, color: Colors.white),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
