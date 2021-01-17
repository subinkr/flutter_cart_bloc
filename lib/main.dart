import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cart_bloc/bloc/cart_bloc.dart';
import 'package:flutter_cart_bloc/catalog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _cartBloc = CartBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(bloc: _cartBloc,
      child: BlocBuilder(bloc: _cartBloc,
        builder: (BuildContext context, List state) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primaryColorLight: Colors.blue,
            ),
            home: LoginScreen(),
          );
        }
      )
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Wlecome'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Enter'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Catalog()));
          },
        )
      )
    );
  }
}