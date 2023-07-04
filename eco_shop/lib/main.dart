 import 'package:eco_shop/screens/login.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eco Shop',
      debugShowCheckedModeBanner: false,
      home: _MyApp());
  }
}

class _MyApp extends StatelessWidget {
  const _MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              width: 300,
              height: 300,
              child:
              const Image(image: AssetImage("assets/images/logo.png")),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 130,
                      width: 130,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(side: BorderSide(color: Colors.orange, width: 3)),
                          padding: EdgeInsets.all(20),
                          backgroundColor: Colors.white,
                        ),
                        child: const Text(
                          'Giriş yap',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),

                    SizedBox(
                      height: 130,
                      width: 130,
                      child: ElevatedButton(
                        onPressed: () {
                          // Kayıt ol ekranı,
                        },
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(side: BorderSide(color: Colors.orange, width: 3)),
                          padding: EdgeInsets.all(20),
                          backgroundColor: Colors.white,
                        ),
                        child: const Text(
                          'Kayıt Ol',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

 