import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      home: Scaffold(
        appBar: null,
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}



class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
      return Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                width: 300,
                height: 300,
                child:
                const Image(image: AssetImage("assets/images/oua_logo.png")),
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
                          // giriş yap ekranı
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
      );
  }
  
}