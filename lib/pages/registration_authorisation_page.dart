import 'package:flutter/material.dart';
import 'package:gyuko/pages/account_page.dart';
import 'package:gyuko/pages/home_page.dart';

bool authorized = false;
String login = "";
String password = "";

class Authorisation extends StatelessWidget {
  const Authorisation({super.key, required this.isAuthorized});
  final isAuthorized;
  @override
  Widget build(BuildContext context) {
    if (this.isAuthorized == true) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AccountPage()),
          );
        },
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text(login),
          ),
        ),
      );
    } else {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RegistrationForm()),
          );
        },
        child: Container(
          height: 60,
          width: 180,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text(
              "Регистрация",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 17,
              ),
            ),
          ),
        ),
      );
    }
  }
}

class RegistrationForm extends StatelessWidget {
  RegistrationForm({super.key});
  final loginController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Регистрация"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Container(
          height: 240,
          decoration: BoxDecoration(
            border: Border.all(width: 0.5),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: TextField(
                      controller: loginController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Введите логин',
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Введите пароль',
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginForm()),
                          );
                        },
                        child: Text("Есть аккаунт?"),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: GestureDetector(
                    onTap: () {
                      login = loginController.text;
                      password = passwordController.text;
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginForm()),
                      );
                    },
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(153, 255, 193, 7),
                      ),
                      padding: EdgeInsets.only(top: 5),
                      child: Center(
                        child: Text("Регистрация"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  LoginForm({super.key});
  final loginLogController = TextEditingController();
  final passwordLogController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Авторизация"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Container(
          height: 210,
          decoration: BoxDecoration(
            border: Border.all(width: 0.5),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: TextField(
                      controller: loginLogController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Введите ваш логин',
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: TextField(
                      controller: passwordLogController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Введите ваш пароль',
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: GestureDetector(
                      onTap: () {
                        if (loginLogController.text == login &&
                            passwordLogController.text == password) {
                          authorized = true;
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                            (route) => false,
                          );
                        }
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(153, 255, 193, 7),
                        ),
                        padding: EdgeInsets.only(top: 5),
                        child: Center(
                          child: Text("Войти"),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
