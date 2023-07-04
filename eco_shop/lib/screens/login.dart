import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LoginScreen extends StatefulWidget {

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 120),
              Center(
                child: SizedBox(
                  height: 70,
                  width: 70,
                  child: ElevatedButton(
                    onPressed: () {
                      // google ile giriş yap ekranı
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(side: BorderSide(color: Colors.orange, width: 3)),
                      padding: EdgeInsets.all(20),
                      backgroundColor: Colors.white,
                    ),
                    child: const Image(image: AssetImage("assets/images/google_logo.png")),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 0, bottom: 0),
                child: TextFormField(
                  controller: usernameController,
                  validator: RequiredValidator(
                      errorText: 'Lütfen kullanıcı adınızı girin!'),
                  decoration: InputDecoration(
                    labelText: "Kullanıcı adı",
                    border: InputBorder.none,
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 3, color: Colors.black),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 0, bottom: 0),
                child: TextFormField(
                  controller: usernameController,
                  validator: RequiredValidator(
                      errorText: 'Lütfen şifrenizi girin!'),
                  decoration: InputDecoration(
                    labelText: "Şifre",
                    border: InputBorder.none,
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 3, color: Colors.black),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 120),
                child: GestureDetector(
                  onTap: () {
                  },
                  child: Text(
                    "Şifremi unuttum",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 100),
              SizedBox(
                height: 130,
                width: 130,
                child: ElevatedButton(
                  onPressed: () {
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
            ],
          ),
        ),
      ),
    );
  }

}