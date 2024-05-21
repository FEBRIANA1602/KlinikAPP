import 'package:flutter/material.dart';
//mengimpor paket Flutter yang berisi widget-widget dan fungsi-fungsi dasar

class Login extends StatefulWidget {
//mendefinisikan kelas Login 
  const Login({Key? key}) : super(key: key);
  //konstruktor dari kelas Login yang menerima parameter opsional key.

  @override
  _LoginState createState() => _LoginState();
  //konstruktor dari kelas Login yang menerima parameter opsional key.
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final _usernameCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
//mendefinisikan kelas _LoginState yang merupakan turunan dari State<Login>. 
//State<Login> adalah kelas yang bertugas mengelola state dari widget Login.
//mendefinisikan sebuah GlobalKeyuntuk mengelola state dari Form widget.
//mendefinisikan dua instance dari TextEditingControlleruntuk mengelola input teks dari pengguna.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //menyediakan struktur dasar untuk aplikas
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Login Admin",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  //Baris ini menambahkan sebuah Text widget yang menampilkan teks "Login Admin" dengan gaya teks yang telah didefinisikan.
                ), 
                SizedBox(height: 50),
                Center(
                  child: Form(
                    key: _formKey,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.3,
                      child: Column(
                        children: [
                          _usernameTextField(),
                          SizedBox(height: 20),
                          _passwordTextField(),
                          SizedBox(height: 40),
                          _tombolLogin(),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _usernameTextField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Username"),
      controller: _usernameCtrl,
    );
  }

  Widget _passwordTextField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Password"),
      obscureText: true,
      controller: _passwordCtrl,
    );
  }

  Widget _tombolLogin() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        child: Text("Login"),
        onPressed: () {},
      ),
    );
  }
}
