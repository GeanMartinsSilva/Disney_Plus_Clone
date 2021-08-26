import 'package:flutter/material.dart';

Widget listadeFilmes(String sessao, List listadefilmes) {
  return Container(
    padding: EdgeInsets.only(
      bottom: 20,
    ),
    child: Column(
      children: [
        Container(
          //LEGENDA DE BANERS
          margin: EdgeInsets.only(
            left: 20.0,
            bottom: 7.0,
          ),
          alignment: Alignment.centerLeft,
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
                movieBanner(listadefilmes[i]),
              SizedBox(width: 15),
            ],
          ),
        )
      ],
    ),
  );
}

Widget movieBanner(String imagePath) {
  return Container(
    width: 105.0,
    margin: EdgeInsets.symmetric(horizontal: 5.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5.0),
      image: DecorationImage(
        image: NetworkImage(imagePath),
        fit: BoxFit.cover,
      ),
    ),
  );
}
