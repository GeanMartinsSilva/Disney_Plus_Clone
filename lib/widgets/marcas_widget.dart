// ignore: non_constant_identifier_names
import 'package:disneyplusdemo/utils/contansts.dart';
import 'package:flutter/material.dart';

class ListaDeMarcas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //CATEGORIAS(DISNEY, PIXAR, ETC)
      padding: const EdgeInsets.only(
          left: 12.0, right: 12.0, top: 15.0, bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          for (int i = 0; i < imgMarcas.length; i++) Categories(imgMarcas[i]),
        ],
      ),
    );
  }
}

Widget Categories(String imagePath) {
  return Container(
    width: 60.0,
    height: 60.0,
    padding: EdgeInsets.all(100),
    //width: MediaQuery.of(context).size.width * 0.18,
    margin: const EdgeInsets.all(1.0),
    decoration: BoxDecoration(
      border: Border.all(
          color: colorFromHex("364365"), // set border color
          width: 1.0), // set border width
      gradient: LinearGradient(
        stops: [0.0, 1.0],
        begin: FractionalOffset.topCenter,
        end: FractionalOffset.bottomCenter,
        colors: [
          colorFromHex("071a47"),
          colorFromHex("064a9c"),
        ],
      ),
      borderRadius: new BorderRadius.only(
        topLeft: const Radius.circular(5.0),
        topRight: const Radius.circular(5.0),
        bottomRight: const Radius.circular(5.0),
        bottomLeft: const Radius.circular(5.0),
      ),
      image: DecorationImage(
        image: NetworkImage(imagePath),
        fit: BoxFit.contain,
      ),
    ),
  );
}
