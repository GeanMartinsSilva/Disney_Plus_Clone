import 'package:carousel_slider/carousel_slider.dart';
import 'package:disneyplusdemo/utils/contansts.dart';
import 'package:flutter/material.dart';

final List<Widget> imageSliders = imgDestaques
    .map(
      (item) => Container(
        child: Container(
          margin: EdgeInsets.all(5.0),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Stack(
                children: <Widget>[
                  Image.network(item, fit: BoxFit.cover, width: 1000.0),
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(200, 0, 0, 0),
                            Color.fromARGB(0, 0, 0, 0)
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        //vertical: 10.0,
                        horizontal: 20.0,
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    )
    .toList();

class DestaquesHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 2),
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2,
            autoPlay: false,
            enlargeCenterPage: true,
            viewportFraction: 0.93,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
          ),
          items: imageSliders,
        ),
      ],
    );
  }
}
