import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CryptoHome extends StatefulWidget {
  @override
  _CryptoHomeState createState() => _CryptoHomeState();
}


class _CryptoHomeState extends State<CryptoHome> {

  List currencies;
  final List<MaterialColor> _colors = [Colors.blue,Colors.lime,Colors.indigo,Colors.cyan];

  @override
  Future<void> initState() async {
    // TODO: implement initState
    super.initState();
    currencies = await getCurrencies();

  }

  Future<List> getCurrencies() async{

    String url="https://api.coinmarketcap.com/v1/ticker/?limit=50";
    http.Response response = await http.get(url);
    return json.decode(response.body);


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Crypto Screen"),
        backgroundColor: Colors.blue,
      ),
      body: _cryptowidget(),
    );
  }

  Widget _cryptowidget(){
    return new Container(
        child: Flexible(
          child:ListView.builder(
            itemBuilder: (BuildContext context,int index){

            },
            itemCount: 0,
          )
        ),
    );
  }



}