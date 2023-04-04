import 'package:flutter/material.dart';
import 'detail_profile.dart';

class ProfilePage extends StatelessWidget {
  final String name;
  final String nim;
  final String photoUrl;

  const ProfilePage({
    Key? key,
    required this.name,
    required this.nim,
    required this.photoUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        children: [
          SizedBox(height: 24),
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage("https://scontent.fjog3-1.fna.fbcdn.net/v/t39.30808-6/339287832_109666502091077_8222333656531990180_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=pWvaSCB9CKgAX-Erinl&_nc_ht=scontent.fjog3-1.fna&oh=00_AfBnyHqokEmjs2DVlrwUeW9YGefyTQvuuAYnnqywcmRDuQ&oe=642FF50D"),
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: Text(
              name,
              style: TextStyle(fontSize: 24),
            ),
          ),
          Center(
            child: Text(
              nim,
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 30.0),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(name: name, nim: nim, photoUrl: "https://scontent.fjog3-1.fna.fbcdn.net/v/t39.30808-6/339287832_109666502091077_8222333656531990180_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=pWvaSCB9CKgAX-Erinl&_nc_ht=scontent.fjog3-1.fna&oh=00_AfBnyHqokEmjs2DVlrwUeW9YGefyTQvuuAYnnqywcmRDuQ&oe=642FF50D", birthPlace: "Banyuasin", birthDate: "19 Maret 2003", classYear: "IF-A", futureGoal: "Hidup Sukses & Bahagia"),
                ),
              );
            },
            child: Text('Info Detail'),
          ),

        ],
      ),
    );
  }
}