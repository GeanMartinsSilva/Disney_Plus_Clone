import 'package:disneyplusdemo/app/utils/contansts.dart';
import 'package:flutter/material.dart';

class Downloads extends StatefulWidget {
  const Downloads({Key? key}) : super(key: key);

  @override
  _DownloadsState createState() => _DownloadsState();
}

class _DownloadsState extends State<Downloads> {
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
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.download_for_offline_outlined,
              size: 250,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Você não tem downloads',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Os filmes que voce baixar',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text(
              'aparecerão aqui',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
