import 'package:flutter/material.dart';
import 'package:canezares_flutter_rorrrrrr/Components/custom_textField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String statusLogin = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Column(
        children: [
          // kita isi textfield username, password, dan button
          Text(
            "Welcome to Application" + statusLogin,
            style: TextStyle(fontSize: 20, color: Colors.yellow),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              controller: usernameController,
              hintText: "Input username",
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              controller: passwordController,
              hintText: "Input password",
            ),
          ),

          // Tambahan ElevatedButton login
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  String username = usernameController.text;
                  String password = passwordController.text;
                  if (username == "admin" && password == "admin") {
                    print("Login Berhasil");
                    setState(() {
                      statusLogin = "Admin";
                    });
                  } else {
                    print("Login Gagal");
                    setState(() {
                      statusLogin = "Vailed";
                    });
                  }
                },
                child: Text("Login"),
              ),

              ElevatedButton(onPressed: () {}, child: Text("Register")),
            ],
          ),
        ],
      ), // Column
    ); // Scaffold
  }
}
