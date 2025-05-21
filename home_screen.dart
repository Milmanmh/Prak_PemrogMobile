import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Hive'),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacementNamed(
                context,
                '/login',
              ); // Kembali ke halaman login
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Search News',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            // Headline
            Text(
              'Headline',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Divider(),

            // Top Stories List
            Expanded(
              child: ListView(
                children: [
                  _newsItem(
                    title: 'CONS FREDERICK T. VARACCHI',
                    category: 'Business, Economy',
                    date: '2020-12-01',
                    assetPath: 'Group 9.png',
                  ),
                  _newsItem(
                    title: 'ENN DAVIS KIRWIN GARY FRE',
                    category: 'World News',
                    date: '2020-12-01',
                    assetPath: 'assets/world_icon.png',
                  ),
                  _newsItem(
                    title: 'Lorem ipsum sit dolor',
                    category: 'Sports, Events',
                    date: '2020-12-01',
                    assetPath: 'assets/sports_icon.png',
                  ),
                  _newsItem(
                    title: 'ANDREW K. K',
                    category: 'Local News',
                    date: '2020-12-01',
                    assetPath: 'assets/local_icon.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _newsItem({
    required String title,
    required String category,
    required String date,
    required String assetPath,
  }) {
    return Card(
      child: ListTile(
        leading: Image.asset(assetPath, width: 40),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('$category • $date'),
        trailing: Icon(Icons.arrow_forward, color: Colors.blueAccent),
      ),
    );
  }
}
