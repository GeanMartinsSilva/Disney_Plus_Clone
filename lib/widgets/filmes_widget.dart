import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget ListadeFilmes(String sessao, List listadefilmes) {
  return Container(
    padding: EdgeInsets.only(
      bottom: 20,
    ),
    child: Column(
      children: [
        Container(
          //LEGENDA DE BANERS
          margin: const EdgeInsets.only(
            left: 20.0,
            bottom: 7.0,
          ),
          alignment: Alignment
              .centerLeft, // Align however you like (i.e .centerRight, centerLeft)
          child: Text(sessao,
              style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontWeight: FontWeight.bold,
              )),
        ),
        Container(
          //BANNERS STARWARS
          height: 150.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              SizedBox(width: 15),
              for (int i = 0; i < listadefilmes.length; i++)
                MovieBanner(listadefilmes[i]),
              SizedBox(width: 15),
            ],
          ),
        )
      ],
    ),
  );
}

Widget MovieBanner(String imagePath) {
  return Container(
    width: 105.0,
    margin: const EdgeInsets.symmetric(horizontal: 5.0),
    decoration: BoxDecoration(
      borderRadius: new BorderRadius.circular(5.0),
      image: DecorationImage(
        image: NetworkImage(imagePath),
        fit: BoxFit.cover,
      ),
    ),
  );
}
