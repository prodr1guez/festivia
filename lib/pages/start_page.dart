import 'package:festivia/widgets/button_app.dart';
import 'package:flutter/material.dart';
import 'package:festivia/utils/colors.dart' as utils;
import 'package:flutter/cupertino.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/party.jpg"), fit: BoxFit.cover)),
        child: Column(
          children: [
            Padding(
              child: new Image.asset(
                'assets/logo.png',
                width: 350.0,
                height: 250.0,
              ),
              padding: EdgeInsets.only(top: 50, left: 20, right: 20),
            ),
            _buttonLogin(),
            _buttonRegister()
          ],
        ),
      ),
    );
  }

  Widget _buttonRegister() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: ButtonApp(
        text: 'Registrar ahora',
        color: Colors.white,
        textColor: utils.Colors.festiviaColor,
        onPressed: toRegister,
      ),
    );
  }

  Widget _buttonLogin() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: ButtonApp(
        text: 'Iniciar Sesion',
        color: utils.Colors.festiviaColor,
        textColor: Colors.white,
        onPressed: toLogin,
      ),
    );
  }

  Widget _textFieldEmail() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'correo@gmail.com',
            labelText: 'Correo electronico',
            suffixIcon: Icon(
              Icons.email_outlined,
              color: utils.Colors.festiviaColor,
            )),
      ),
    );
  }

  Widget _textFieldUsername() {
    return TextField(
      decoration: InputDecoration(
          hintText: 'Pepito Perez',
          labelText: 'Nombre de usuario',
          filled: true,
          fillColor: Color(0xFFACE5EE),
          suffixIcon: Icon(
            Icons.person_outline,
            color: utils.Colors.festiviaColor,
          )),
    );
  }

  Widget _textFieldPassword() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            labelText: 'Contraseña',
            suffixIcon: Icon(
              Icons.lock_open_outlined,
              color: utils.Colors.festiviaColor,
            )),
      ),
    );
  }

  Widget _textFieldConfirmPassword() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            labelText: 'Confirmar Contraseña',
            suffixIcon: Icon(
              Icons.lock_open_outlined,
              color: utils.Colors.festiviaColor,
            )),
      ),
    );
  }

  Widget _textLogin() {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Text(
        'REGISTRO',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
      ),
    );
  }

  void toLogin() {
    Navigator.pushNamed(context, 'login');
  }

  void toRegister() {
    Navigator.pushNamed(context, 'register');
  }
}
