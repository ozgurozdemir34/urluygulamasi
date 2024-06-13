import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Linkler extends StatefulWidget {
  Linkler({super.key});

  @override
  _LinklerState createState() => _LinklerState();
}

class _LinklerState extends State<Linkler> {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final TextEditingController url1 = TextEditingController();
  final TextEditingController url2 = TextEditingController();
  final TextEditingController url3 = TextEditingController();
  final TextEditingController url4 = TextEditingController();
  final TextEditingController url5 = TextEditingController();
  final TextEditingController url6 = TextEditingController();
  final TextEditingController url7 = TextEditingController();
  final TextEditingController url8 = TextEditingController();
  final TextEditingController url9 = TextEditingController();
  final TextEditingController url10 = TextEditingController();

  Future<Map<String, dynamic>> _getUrls() async {
    var doc = await firestore.collection("Url").doc("Url").get();
    return doc.data()!;
  }

  void _updateUrls() async {
    try {
      await firestore.collection("Url").doc("Url").update({
        'Url1': url1.text,
        'Url2': url2.text,
        'Url3': url3.text,
        'Url4': url4.text,
        'Url5': url5.text,
        'Url6': url6.text,
        'Url7': url7.text,
        'Url8': url8.text,
        'Url9': url9.text,
        'Url10': url10.text,
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('URL\'ler başarıyla güncellendi!')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('URL\'ler güncellenirken bir hata oluştu: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("URL LİNKLERİ"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: FutureBuilder<Map<String, dynamic>>(
        future: _getUrls(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Hata: ${snapshot.error}"));
          } else if (snapshot.hasData) {
            var data = snapshot.data!;
            url1.text = data['Url1'] ?? "";
            url2.text = data['Url2'] ?? "";
            url3.text = data['Url3'] ?? "";
            url4.text = data['Url4'] ?? "";
            url5.text = data['Url5'] ?? "";
            url6.text = data['Url6'] ?? "";
            url7.text = data['Url7'] ?? "";
            url8.text = data['Url8'] ?? "";
            url9.text = data['Url9'] ?? "";
            url10.text = data['Url10'] ?? "";

            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextField(
                      controller: url1,
                      decoration: InputDecoration(
                        labelText: "URL 1",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextField(
                      controller: url2,
                      decoration: InputDecoration(
                        labelText: "URL 2",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextField(
                      controller: url3,
                      decoration: InputDecoration(
                        labelText: "URL 3",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextField(
                      controller: url4,
                      decoration: InputDecoration(
                        labelText: "URL 4",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextField(
                      controller: url5,
                      decoration: InputDecoration(
                        labelText: "URL 5",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextField(
                      controller: url6,
                      decoration: InputDecoration(
                        labelText: "URL 6",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextField(
                      controller: url7,
                      decoration: InputDecoration(
                        labelText: "URL 7",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextField(
                      controller: url8,
                      decoration: InputDecoration(
                        labelText: "URL 8",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextField(
                      controller: url9,
                      decoration: InputDecoration(
                        labelText: "URL 9",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextField(
                      controller: url10,
                      decoration: InputDecoration(
                        labelText: "URL 10",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: _updateUrls,
                      child: Text("Güncelle"),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return Center(child: Text("Veri yok"));
          }
        },
      ),
    );
  }
}
