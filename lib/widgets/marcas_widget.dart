import 'package:disneyplusdemo/utils/contansts.dart';
import 'package:flutter/material.dart';

class ListaDeMarcas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //CATEGORIAS(DISNEY, PIXAR, ETC)
      padding:
          EdgeInsets.only(left: 12.0, right: 12.0, top: 15.0, bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          for (int i = 0; i < imgMarcas.length; i++) categories(imgMarcas[i]),
        ],
      ),
    );
  }
}

Widget categories(String image) {
  return Container(
    width: 60.0,
    height: 60.0,
    padding: EdgeInsets.all(100),
    //width: MediaQuery.of(context).size.width * 0.18,
    margin: EdgeInsets.all(1.0),
    decoration: BoxDecoration(
      border: Border.all(
        color: colorFromHex("364365"),
        width: 1.0,
      ),
      gradient: LinearGradient(
        stops: [0.0, 1.0],
        begin: FractionalOffset.topCenter,
        end: FractionalOffset.bottomCenter,
        colors: [
          colorFromHex("071a47"),
          colorFromHex("064a9c"),
        ],
      ),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(5.0),
        topRight: Radius.circular(5.0),
        bottomRight: Radius.circular(5.0),
        bottomLeft: Radius.circular(5.0),
      ),
      image: DecorationImage(
        image: NetworkImage(image),
        fit: BoxFit.contain,
      ),
    ),
  );
}
