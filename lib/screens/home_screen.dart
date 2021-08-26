import 'package:disneyplusdemo/utils/contansts.dart';
import 'package:disneyplusdemo/widgets/destaque_widget.dart';
import 'package:disneyplusdemo/widgets/filmes_widget.dart';
import 'package:disneyplusdemo/widgets/marcas_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colorFromHex('2d3246'),
            colorFromHex('1a1c29'),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            DestaquesHome(),
            ListaDeMarcas(),
            listadeFilmes('Universo Cinematográfico Marvel', imgMarvel),
            listadeFilmes('Recomendado pra Você', imgRecomendacoes),
            listadeFilmes('Novidades Disney+', imgNovidades),
            listadeFilmes('Filmes e Séries de Star Wars', imgStarWars),
          ],
        ),
      ),
    );
  }
}
