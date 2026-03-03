import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[800],
          leading: Icon(Icons.home),
          title: Text('Aplikasi Pertamaku'),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(children: [Icon(Icons.archive), Text(" Artikel Baru")]),
                Card(
                  child: Column(
                    children: [
                      Image.network(
                        'https://cdn-cms.sip-scootershop.com/6e/24/21/13/1709817502/vespa-90-ss-super-sprint-90-ccm-2t-ac-65-71-v9ss1t.jpg?auto=compress&auto=format',
                        errorBuilder: (context, error, stackTrace) =>
                            Icon(Icons.broken_image),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Mengenal Vespa SS90: Vespa Lawas Termahal di Dunia"),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Komentar',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                ListView(
                  shrinkWrap: true, 
                  physics: NeverScrollableScrollPhysics(), 
                  children: [
                    for (var i = 0; i < 5; i++)
                      Card(
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Jhon Doe',
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                              Text('Wahh Kerenn Banget Vespanyaaa'),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
