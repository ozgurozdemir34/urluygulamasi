import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:urluygulamasi/linkler.dart';

class Giris extends StatefulWidget {
  Giris({super.key});

  @override
  _GirisState createState() => _GirisState();
}

class _GirisState extends State<Giris> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final TextEditingController email = TextEditingController();
  final TextEditingController sifre = TextEditingController();
  String yazi = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      body: Column(
        children: [
          SizedBox(
            height: 50,
            width: 50,
          ),
          TextField(
            controller: email,
            decoration: const InputDecoration(
                hintText: "Email",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)))),
          ),
          TextField(
            obscureText: true,
            controller: sifre,
            decoration: const InputDecoration(
                hintText: "Şifre",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)))),
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.login),
            onPressed: () async {
              try {
                UserCredential userCredential =
                    await auth.signInWithEmailAndPassword(
                  email: email.text,
                  password: sifre.text,
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Linkler()),
                );
              } catch (e) {
                setState(() {
                  yazi = "Lütfen tekrar deneyiniz";
                });
              }
            },
            label: Text("Giriş Yap"),
          ),
          Text(
            yazi,
            style: TextStyle(color: Colors.red),
          ),
        ],
      ),
    );
  }
}
